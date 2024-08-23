const body = document.getElementById('body');
const notificationContainer = document.getElementById('notification-container');
const actionStyles = {
    success: { color: '#00ff37', image: '../img/success.png' },
    error: { color: '#ff0000', image: '../img/error.png' },
    info: { color: '#0059ff', image: '../img/info.png' },
    warning: { color: '#ff8800', image: '../img/warning.png' },
    general: { color: '#aaaaaa', image: '../img/general.png' },
    sms: { color: '#42b387', image: '../img/sms.png' },
};

window.addEventListener('message', function(event) {
    const action = event.data.action;
    if (actionStyles[action]) {
        const style = actionStyles[action];
        
        notificationContainer.style.minWidth = event.data.minwidth || 'auto';
        notificationContainer.style.maxWidth = event.data.maxwidth || '400px';
        
        const notification = document.createElement('div');
        notification.className = 'notification';
        notification.style.backgroundColor = event.data.bg || 'auto';
        notification.style.minHeight = event.data.minheight || 'auto';
        notification.style.maxHeight = event.data.maxheight || '6%';
        notification.style.borderRadius = event.data.customradius || '0px';
        
        const notificationHeader = document.createElement('div');
        notificationHeader.className = 'notification-header';
        
        const icon = document.createElement('img');
        icon.src = style.image || '';
        icon.className = 'notification-icon';
        icon.style.width = event.data.imgsize || 'auto';
        icon.style.height = event.data.imgsize || 'auto';
        
        const title = document.createElement('h1');
        title.className = 'notification-title';
        title.style.color = event.data.tic;
        title.innerText = event.data.title || '';
        
        notificationHeader.appendChild(icon);
        notificationHeader.appendChild(title);
        
        if (event.data.topborder) {
            notification.style.borderTopWidth = event.data.borderwidth
            notification.style.borderTopStyle = event.data.borderstyle
        }
        if (event.data.rightborder) {
            notification.style.borderRightWidth = event.data.borderwidth
            notification.style.borderRightStyle = event.data.borderstyle
        }
        if (event.data.leftborder) {
            notification.style.borderLeftWidth = event.data.borderwidth
            notification.style.borderLeftStyle = event.data.borderstyle
        }
        if (event.data.botborder) {
            notification.style.borderBottomWidth = event.data.borderwidth
            notification.style.borderBottomStyle = event.data.borderstyle
        }
        
        if (event.data.glowing) {
            notification.style.setProperty('--color', style.color);
        }
        
        const msg = document.createElement('p');
        msg.className = 'notification-message';
        msg.style.color = event.data.tec;
        msg.innerText = event.data.message || '';
        
        notification.style.borderLeftColor = style.color;
        notification.style.borderBottomColor = style.color;
        
        body.style.right = event.data.right || 'auto';
        body.style.left = event.data.left || 'auto';
        body.style.top = event.data.top || 'auto';
        
        notification.appendChild(notificationHeader);

        if (event.data.hr) {
            const breaker = document.createElement('hr');
            breaker.className = 'border';
            breaker.style.Color = event.data.hrc || 'gray';
            breaker.style.backgroundColor = event.data.hrc || 'gray';
            breaker.style.borderColor = event.data.hrc || 'gray';
            notification.appendChild(breaker);
        }

        
        notification.appendChild(msg);
        
        notificationContainer.insertBefore(notification, notificationContainer.firstChild);
        
        requestAnimationFrame(() => {
            notification.classList.add('show');
        });
        
        if (event.data.duration) {
            setTimeout(() => {
                notification.classList.remove('show');
                notification.classList.add('hide');
                setTimeout(() => {
                    notificationContainer.removeChild(notification);
                }, 500);
            }, event.data.duration);
        }
    }
});
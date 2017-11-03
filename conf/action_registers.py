#_*_coding:utf-8_*_
__author__ = 'Alex Li'

from modules import views

actions = {
    'start_session': views.start_session,
    # 'stop': views.stop_server,
    'syncdb': views.syncdb,
    'create_users': views.create_users,#3
    'create_groups': views.create_groups,#4
    'create_hosts': views.create_hosts,#1
    'create_bindhosts': views.create_bindhosts,#5
    'create_remoteusers': views.create_remoteusers,#2
    'audit':views.log_audit

}
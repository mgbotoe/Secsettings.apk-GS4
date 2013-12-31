.class public Lcom/android/settings/notificationreminder/NotificationReminderEnabler;
.super Ljava/lang/Object;
.source "NotificationReminderEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 1
    .parameter "context"
    .parameter "switch_"

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, "NotificationReminderEnabler"

    iput-object v0, p0, Lcom/android/settings/notificationreminder/NotificationReminderEnabler;->TAG:Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lcom/android/settings/notificationreminder/NotificationReminderEnabler;->mContext:Landroid/content/Context;

    .line 20
    iput-object p2, p0, Lcom/android/settings/notificationreminder/NotificationReminderEnabler;->mSwitch:Landroid/widget/Switch;

    .line 21
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 72
    iget-object v1, p0, Lcom/android/settings/notificationreminder/NotificationReminderEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "notification_reminder"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 74
    .local v0, state:I
    if-eqz p2, :cond_0

    if-nez v0, :cond_0

    .line 76
    iget-object v1, p0, Lcom/android/settings/notificationreminder/NotificationReminderEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 77
    const-string v1, "NotificationReminderEnabler"

    const-string v2, "switch is on"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v1, p0, Lcom/android/settings/notificationreminder/NotificationReminderEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "notification_reminder"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 92
    :goto_0
    return-void

    .line 83
    :cond_0
    if-nez p2, :cond_1

    if-ne v0, v4, :cond_1

    .line 84
    iget-object v1, p0, Lcom/android/settings/notificationreminder/NotificationReminderEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 85
    iget-object v1, p0, Lcom/android/settings/notificationreminder/NotificationReminderEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "notification_reminder"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 88
    const-string v1, "NotificationReminderEnabler"

    const-string v2, "switch is off"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 90
    :cond_1
    const-string v1, "NotificationReminderEnabler"

    const-string v2, "switch error"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/notificationreminder/NotificationReminderEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 45
    return-void
.end method

.method public resume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 24
    iget-object v1, p0, Lcom/android/settings/notificationreminder/NotificationReminderEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "notification_reminder"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 32
    .local v0, notificationReminder_state:I
    if-ne v0, v4, :cond_0

    .line 33
    iget-object v1, p0, Lcom/android/settings/notificationreminder/NotificationReminderEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 34
    iget-object v1, p0, Lcom/android/settings/notificationreminder/NotificationReminderEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 40
    :goto_0
    iget-object v1, p0, Lcom/android/settings/notificationreminder/NotificationReminderEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 41
    return-void

    .line 36
    :cond_0
    iget-object v1, p0, Lcom/android/settings/notificationreminder/NotificationReminderEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 37
    iget-object v1, p0, Lcom/android/settings/notificationreminder/NotificationReminderEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0
.end method

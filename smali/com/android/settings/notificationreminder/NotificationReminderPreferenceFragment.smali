.class public Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;
.super Landroid/preference/PreferenceFragment;
.source "NotificationReminderPreferenceFragment.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static mOpenDetailMenu:Z

.field private static mOpenDetailMenuKey:Ljava/lang/String;


# instance fields
.field public final KEY_TIME_INTERVAL:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mNotificationReminderEnabler:Lcom/android/settings/notificationreminder/NotificationReminderEnabler;

.field private mNotificationReminderObserver:Landroid/database/ContentObserver;

.field private mPreferenceFragmentActivity:Landroid/app/Activity;

.field private mTimeInterval:Landroid/preference/ListPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mOpenDetailMenu:Z

    .line 52
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mOpenDetailMenuKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 37
    const-string v0, "NotificationReminderPreferenceFragment"

    iput-object v0, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->TAG:Ljava/lang/String;

    .line 39
    const-string v0, "notification_time_interval"

    iput-object v0, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->KEY_TIME_INTERVAL:Ljava/lang/String;

    .line 58
    new-instance v0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment$1;-><init>(Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mNotificationReminderObserver:Landroid/database/ContentObserver;

    .line 55
    const-string v0, "NotificationReminderPreferenceFragment"

    const-string v1, "NotificationReminderPreferenceFragment()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->updateNotificationReminderSaving()V

    return-void
.end method

.method private updateNotificationReminderSaving()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 212
    invoke-virtual {p0}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "notification_reminder"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 216
    .local v0, notificationReminder_state:I
    if-nez v0, :cond_0

    .line 217
    iget-object v1, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 218
    iget-object v1, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mTimeInterval:Landroid/preference/ListPreference;

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 226
    :goto_0
    return-void

    .line 221
    :cond_0
    iget-object v1, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 223
    iget-object v1, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mTimeInterval:Landroid/preference/ListPreference;

    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/16 v3, 0x10

    const/4 v7, -0x2

    const/16 v6, 0x12c

    const/4 v5, 0x0

    .line 77
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const-string v1, "NotificationReminderPreferenceFragment"

    const-string v2, "onCreate()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mPreferenceFragmentActivity:Landroid/app/Activity;

    .line 82
    const v1, 0x7f070065

    invoke-virtual {p0, v1}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->addPreferencesFromResource(I)V

    .line 84
    new-instance v1, Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mPreferenceFragmentActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mActionBarSwitch:Landroid/widget/Switch;

    .line 86
    iget-object v1, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mPreferenceFragmentActivity:Landroid/app/Activity;

    instance-of v1, v1, Landroid/preference/PreferenceActivity;

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mPreferenceFragmentActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 88
    .local v0, padding:I
    iget-object v1, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v5, v5, v0, v5}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 89
    iget-object v1, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mPreferenceFragmentActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 91
    iget-object v1, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mPreferenceFragmentActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const/16 v4, 0x15

    invoke-direct {v3, v7, v7, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 96
    iget-object v1, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mPreferenceFragmentActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mActionBarLayout:Landroid/view/View;

    .line 97
    iget-object v1, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->requestFocus()Z

    .line 100
    .end local v0           #padding:I
    :cond_0
    new-instance v1, Lcom/android/settings/notificationreminder/NotificationReminderEnabler;

    iget-object v2, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mPreferenceFragmentActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-direct {v1, v2, v3}, Lcom/android/settings/notificationreminder/NotificationReminderEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mNotificationReminderEnabler:Lcom/android/settings/notificationreminder/NotificationReminderEnabler;

    .line 102
    const-string v1, "notification_time_interval"

    invoke-virtual {p0, v1}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mTimeInterval:Landroid/preference/ListPreference;

    .line 103
    iget-object v1, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mTimeInterval:Landroid/preference/ListPreference;

    if-eqz v1, :cond_2

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "time_key"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "time_key"

    invoke-static {v1, v2, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 107
    :cond_1
    iget-object v1, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mTimeInterval:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "time_key"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mTimeInterval:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "time_key"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mTimeInterval:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mTimeInterval:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v1, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mTimeInterval:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 131
    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mActionBarSwitch:Landroid/widget/Switch;

    .line 207
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 208
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 189
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 191
    iget-object v0, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mActionBarSwitch:Landroid/widget/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 192
    iget-object v0, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mNotificationReminderEnabler:Lcom/android/settings/notificationreminder/NotificationReminderEnabler;

    invoke-virtual {v0}, Lcom/android/settings/notificationreminder/NotificationReminderEnabler;->pause()V

    .line 193
    invoke-virtual {p0}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mNotificationReminderObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 194
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 236
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .local v0, key:Ljava/lang/String;
    move-object v2, p2

    .line 237
    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 239
    .local v1, value:I
    const-string v2, "notification_time_interval"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 241
    iget-object v2, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mTimeInterval:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v2, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 242
    iget-object v2, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mTimeInterval:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mTimeInterval:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 244
    invoke-virtual {p0}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "time_key"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 252
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 250
    .restart local p2
    :cond_0
    const-string v2, "NotificationReminderPreferenceFragment"

    const-string v3, "onPreferenceChange"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/16 v4, 0x10

    const/4 v7, 0x1

    const/4 v6, -0x2

    const/4 v5, 0x0

    .line 135
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090848

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v1, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mPreferenceFragmentActivity:Landroid/app/Activity;

    instance-of v1, v1, Landroid/preference/PreferenceActivity;

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mPreferenceFragmentActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 140
    .local v0, padding:I
    iget-object v1, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v5, v5, v0, v5}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 141
    iget-object v1, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mPreferenceFragmentActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 143
    iget-object v1, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mPreferenceFragmentActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const/16 v4, 0x15

    invoke-direct {v3, v6, v6, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 148
    iget-object v1, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mPreferenceFragmentActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mActionBarLayout:Landroid/view/View;

    .line 151
    .end local v0           #padding:I
    :cond_0
    iget-object v1, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mActionBarLayout:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 152
    iget-object v1, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 155
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->updateNotificationReminderSaving()V

    .line 156
    iget-object v1, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mNotificationReminderEnabler:Lcom/android/settings/notificationreminder/NotificationReminderEnabler;

    invoke-virtual {v1}, Lcom/android/settings/notificationreminder/NotificationReminderEnabler;->resume()V

    .line 157
    iget-object v1, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v7}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "notification_reminder"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mNotificationReminderObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v7, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 185
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 267
    .local v0, a:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    .line 270
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 198
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 200
    iget-object v0, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 203
    :cond_0
    return-void
.end method

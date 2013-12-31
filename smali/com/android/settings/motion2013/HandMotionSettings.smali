.class public Lcom/android/settings/motion2013/HandMotionSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "HandMotionSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private isGoIntoQuideHub:Z

.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mActivity:Landroid/app/Activity;

.field private final mPalmMotionObserver:Landroid/database/ContentObserver;

.field private mPalmSwipe:Landroid/preference/SwitchPreferenceScreen;

.field private mPalmTouch:Landroid/preference/SwitchPreferenceScreen;

.field private mResolver:Landroid/content/ContentResolver;

.field private mTapAndTwist:Landroid/preference/SwitchPreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/motion2013/HandMotionSettings;->isGoIntoQuideHub:Z

    .line 61
    new-instance v0, Lcom/android/settings/motion2013/HandMotionSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/motion2013/HandMotionSettings$1;-><init>(Lcom/android/settings/motion2013/HandMotionSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mPalmMotionObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/motion2013/HandMotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/motion2013/HandMotionSettings;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method public static isAllOptionDisabled(Landroid/content/ContentResolver;)Z
    .locals 6
    .parameter "cr"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 257
    const-string v5, "surface_tap_and_twist"

    invoke-static {p0, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 258
    const-string v5, "surface_palm_swipe"

    invoke-static {p0, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 260
    .local v0, palmSwipe:I
    const-string v5, "surface_palm_touch"

    invoke-static {p0, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 262
    .local v1, palmTouch:I
    const/4 v2, 0x0

    .line 265
    .local v2, tapAndTwist:I
    or-int v5, v0, v1

    or-int/2addr v5, v2

    if-ge v5, v3, :cond_0

    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method


# virtual methods
.method public isAllHandMotionDisabled()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 269
    invoke-virtual {p0}, Lcom/android/settings/motion2013/HandMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mResolver:Landroid/content/ContentResolver;

    .line 270
    iget-object v5, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "surface_tap_and_twist"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 271
    iget-object v5, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "surface_palm_swipe"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 273
    .local v0, palmSwipe:I
    iget-object v5, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "surface_palm_touch"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 275
    .local v1, palmTouch:I
    const/4 v2, 0x0

    .line 278
    .local v2, tapAndTwist:I
    or-int v5, v0, v1

    or-int/2addr v5, v2

    if-ge v5, v3, :cond_0

    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/android/settings/motion2013/HandMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "surface_motion_engine"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 251
    iget-object v0, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mPalmSwipe:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 252
    iget-object v0, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mPalmTouch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 253
    iget-object v0, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mTapAndTwist:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 254
    return-void

    .line 249
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/16 v9, 0x10

    const/4 v11, -0x2

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 71
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0, v5}, Lcom/android/settings/motion2013/HandMotionSettings;->setHasOptionsMenu(Z)V

    .line 74
    const v6, 0x7f070048

    invoke-virtual {p0, v6}, Lcom/android/settings/motion2013/HandMotionSettings;->addPreferencesFromResource(I)V

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/motion2013/HandMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mActivity:Landroid/app/Activity;

    .line 77
    new-instance v6, Landroid/widget/Switch;

    iget-object v8, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v6, v8}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 78
    iget-object v6, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mActivity:Landroid/app/Activity;

    instance-of v6, v6, Landroid/preference/PreferenceActivity;

    if-eqz v6, :cond_1

    .line 79
    iget-object v2, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mActivity:Landroid/app/Activity;

    check-cast v2, Landroid/preference/PreferenceActivity;

    .line 80
    .local v2, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v6

    if-nez v6, :cond_1

    .line 81
    :cond_0
    iget-object v6, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0f001b

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 83
    .local v1, padding:I
    iget-object v6, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v7, v7, v1, v7}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 84
    iget-object v6, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v9, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 86
    iget-object v6, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    iget-object v8, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v9, Landroid/app/ActionBar$LayoutParams;

    const/16 v10, 0x15

    invoke-direct {v9, v11, v11, v10}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v6, v8, v9}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 90
    iget-object v6, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mActionBarLayout:Landroid/view/View;

    .line 93
    .end local v1           #padding:I
    .end local v2           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_1
    iget-object v6, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 95
    const-string v6, "palm_swipe"

    invoke-virtual {p0, v6}, Lcom/android/settings/motion2013/HandMotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreferenceScreen;

    iput-object v6, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mPalmSwipe:Landroid/preference/SwitchPreferenceScreen;

    .line 96
    const-string v6, "palm_touch"

    invoke-virtual {p0, v6}, Lcom/android/settings/motion2013/HandMotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreferenceScreen;

    iput-object v6, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mPalmTouch:Landroid/preference/SwitchPreferenceScreen;

    .line 97
    const-string v6, "tap_and_twist"

    invoke-virtual {p0, v6}, Lcom/android/settings/motion2013/HandMotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreferenceScreen;

    iput-object v6, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mTapAndTwist:Landroid/preference/SwitchPreferenceScreen;

    .line 99
    iget-object v6, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mPalmSwipe:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 100
    iget-object v6, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mPalmTouch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 101
    iget-object v6, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mTapAndTwist:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/motion2013/HandMotionSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 112
    .local v3, ps:Landroid/preference/PreferenceScreen;
    iget-object v6, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mTapAndTwist:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 116
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 117
    iget-boolean v6, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v6, :cond_2

    sget v6, Lcom/android/settings/motion2013/HandMotionSettings;->mSettingValue:I

    const/4 v8, -0x1

    if-eq v6, v8, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/motion2013/HandMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "surface_motion_engine"

    invoke-static {v6, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_2

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/motion2013/HandMotionSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 121
    .local v0, extra_bundle:Landroid/os/Bundle;
    const-string v6, "extra_parent_preference_key"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 122
    .local v4, targetKey:Ljava/lang/String;
    sget v6, Lcom/android/settings/motion2013/HandMotionSettings;->mSettingValue:I

    if-ne v6, v5, :cond_3

    .line 123
    .local v5, value:Z
    :goto_0
    const-string v6, "palm_swipe"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 124
    iget-object v6, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mPalmSwipe:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v5}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 125
    iget-object v6, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mPalmSwipe:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/android/settings/motion2013/HandMotionSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 136
    .end local v0           #extra_bundle:Landroid/os/Bundle;
    .end local v4           #targetKey:Ljava/lang/String;
    .end local v5           #value:Z
    :cond_2
    :goto_1
    return-void

    .restart local v0       #extra_bundle:Landroid/os/Bundle;
    .restart local v4       #targetKey:Ljava/lang/String;
    :cond_3
    move v5, v7

    .line 122
    goto :goto_0

    .line 126
    .restart local v5       #value:Z
    :cond_4
    const-string v6, "palm_touch"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 127
    iget-object v6, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mPalmTouch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v5}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 128
    iget-object v6, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mPalmTouch:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/android/settings/motion2013/HandMotionSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_1

    .line 129
    :cond_5
    const-string v6, "tap_and_twist"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 130
    iget-object v6, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mTapAndTwist:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v5}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 131
    iget-object v6, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mTapAndTwist:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/android/settings/motion2013/HandMotionSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v2, 0x0

    .line 225
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 227
    invoke-virtual {p0}, Lcom/android/settings/motion2013/HandMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    const/4 v0, 0x1

    const v1, 0x7f090b11

    invoke-interface {p1, v2, v2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020196

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 232
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 236
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 243
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 238
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 239
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "helphub:section"

    const-string v2, "motion"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    invoke-virtual {p0}, Lcom/android/settings/motion2013/HandMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 241
    const/4 v1, 0x1

    goto :goto_0

    .line 236
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 177
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 179
    invoke-virtual {p0}, Lcom/android/settings/motion2013/HandMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mPalmMotionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 181
    iget-boolean v0, p0, Lcom/android/settings/motion2013/HandMotionSettings;->isGoIntoQuideHub:Z

    if-nez v0, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/android/settings/motion2013/HandMotionSettings;->isAllHandMotionDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/motion2013/HandMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "surface_motion_engine"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/motion2013/HandMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090d75

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 184
    invoke-virtual {p0}, Lcom/android/settings/motion2013/HandMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "surface_motion_engine"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 185
    iget-object v0, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 188
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 206
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, key:Ljava/lang/String;
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    .line 208
    .local v1, value:I
    :goto_0
    const-string v4, "palm_swipe"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 209
    invoke-virtual {p0}, Lcom/android/settings/motion2013/HandMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "surface_palm_swipe"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 216
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/motion2013/HandMotionSettings;->isAllHandMotionDisabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 217
    invoke-virtual {p0}, Lcom/android/settings/motion2013/HandMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "surface_motion_engine"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 218
    iget-object v4, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 220
    :cond_1
    return v2

    .end local v1           #value:I
    :cond_2
    move v1, v3

    .line 207
    goto :goto_0

    .line 210
    .restart local v1       #value:I
    :cond_3
    const-string v4, "palm_touch"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 211
    invoke-virtual {p0}, Lcom/android/settings/motion2013/HandMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "surface_palm_touch"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 212
    :cond_4
    const-string v4, "tap_and_twist"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 213
    invoke-virtual {p0}, Lcom/android/settings/motion2013/HandMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "surface_tap_and_twist"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/motion2013/HandMotionSettings;->isGoIntoQuideHub:Z

    .line 202
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 141
    iget-boolean v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 142
    .local v1, super_mOpenDetailMenu:Z
    iput-boolean v4, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 145
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 146
    iput-boolean v4, p0, Lcom/android/settings/motion2013/HandMotionSettings;->isGoIntoQuideHub:Z

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/motion2013/HandMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "surface_motion_engine"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mPalmMotionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 151
    iget-object v2, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 152
    iget-object v2, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/motion2013/HandMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 156
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/motion2013/HandMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mResolver:Landroid/content/ContentResolver;

    .line 158
    iget-object v5, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mPalmSwipe:Landroid/preference/SwitchPreferenceScreen;

    iget-object v2, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "surface_palm_swipe"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 159
    iget-object v5, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mPalmTouch:Landroid/preference/SwitchPreferenceScreen;

    iget-object v2, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "surface_palm_touch"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 160
    iget-object v5, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mTapAndTwist:Landroid/preference/SwitchPreferenceScreen;

    iget-object v2, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "surface_tap_and_twist"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_2
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 162
    iget-object v2, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "surface_motion_engine"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_4

    move v0, v3

    .line 163
    .local v0, handMotionEngineState:Z
    :goto_3
    iget-object v2, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 165
    iget-object v2, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mPalmSwipe:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 166
    iget-object v2, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mPalmTouch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 167
    iget-object v2, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mTapAndTwist:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 170
    iput-boolean v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 171
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->openSearchDetailMenu()V

    .line 173
    return-void

    .end local v0           #handMotionEngineState:Z
    :cond_1
    move v2, v4

    .line 158
    goto :goto_0

    :cond_2
    move v2, v4

    .line 159
    goto :goto_1

    :cond_3
    move v2, v4

    .line 160
    goto :goto_2

    :cond_4
    move v0, v4

    .line 162
    goto :goto_3
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 192
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 193
    iget-object v0, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/settings/motion2013/HandMotionSettings;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/motion2013/HandMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 197
    :cond_0
    return-void
.end method

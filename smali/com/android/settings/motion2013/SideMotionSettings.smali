.class public Lcom/android/settings/motion2013/SideMotionSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SideMotionSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private isGoIntoQuideHub:Z

.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mActivity:Landroid/app/Activity;

.field private mOneHandOperation:Landroid/preference/SwitchPreferenceScreen;

.field private mPeek:Landroid/preference/SwitchPreferenceScreen;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/motion2013/SideMotionSettings;->isGoIntoQuideHub:Z

    return-void
.end method


# virtual methods
.method public isAllSideMotionDisabled()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 204
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SideMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/motion2013/SideMotionSettings;->mResolver:Landroid/content/ContentResolver;

    .line 205
    iget-object v4, p0, Lcom/android/settings/motion2013/SideMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "side_motion_one_hand_operation"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 206
    .local v0, oneHandOperation:I
    iget-object v4, p0, Lcom/android/settings/motion2013/SideMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "side_motion_peek"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 207
    .local v1, peek:I
    or-int v4, v0, v1

    if-ge v4, v2, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SideMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "master_side_motion"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 193
    if-eqz p2, :cond_1

    .line 194
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SideMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->autoTurnOffMotionEngine(Landroid/content/Context;)V

    .line 199
    :goto_1
    iget-object v0, p0, Lcom/android/settings/motion2013/SideMotionSettings;->mOneHandOperation:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 200
    iget-object v0, p0, Lcom/android/settings/motion2013/SideMotionSettings;->mPeek:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 201
    return-void

    .line 192
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 196
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SideMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOnMotionEngine(Landroid/content/Context;)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/16 v5, 0x10

    const/4 v6, -0x2

    const/4 v4, 0x0

    .line 59
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/settings/motion2013/SideMotionSettings;->setHasOptionsMenu(Z)V

    .line 62
    const v2, 0x7f07009a

    invoke-virtual {p0, v2}, Lcom/android/settings/motion2013/SideMotionSettings;->addPreferencesFromResource(I)V

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SideMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/motion2013/SideMotionSettings;->mActivity:Landroid/app/Activity;

    .line 65
    new-instance v2, Landroid/widget/Switch;

    iget-object v3, p0, Lcom/android/settings/motion2013/SideMotionSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/motion2013/SideMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 66
    iget-object v2, p0, Lcom/android/settings/motion2013/SideMotionSettings;->mActivity:Landroid/app/Activity;

    instance-of v2, v2, Landroid/preference/PreferenceActivity;

    if-eqz v2, :cond_0

    .line 67
    iget-object v2, p0, Lcom/android/settings/motion2013/SideMotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 69
    .local v0, padding:I
    iget-object v2, p0, Lcom/android/settings/motion2013/SideMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4, v4, v0, v4}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 70
    iget-object v2, p0, Lcom/android/settings/motion2013/SideMotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 72
    iget-object v2, p0, Lcom/android/settings/motion2013/SideMotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/motion2013/SideMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const/16 v5, 0x15

    invoke-direct {v4, v6, v6, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 76
    iget-object v2, p0, Lcom/android/settings/motion2013/SideMotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/motion2013/SideMotionSettings;->mActionBarLayout:Landroid/view/View;

    .line 78
    .end local v0           #padding:I
    :cond_0
    iget-object v2, p0, Lcom/android/settings/motion2013/SideMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 80
    const-string v2, "one_hand_operation"

    invoke-virtual {p0, v2}, Lcom/android/settings/motion2013/SideMotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreferenceScreen;

    iput-object v2, p0, Lcom/android/settings/motion2013/SideMotionSettings;->mOneHandOperation:Landroid/preference/SwitchPreferenceScreen;

    .line 81
    const-string v2, "peek"

    invoke-virtual {p0, v2}, Lcom/android/settings/motion2013/SideMotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreferenceScreen;

    iput-object v2, p0, Lcom/android/settings/motion2013/SideMotionSettings;->mPeek:Landroid/preference/SwitchPreferenceScreen;

    .line 83
    iget-object v2, p0, Lcom/android/settings/motion2013/SideMotionSettings;->mOneHandOperation:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 84
    iget-object v2, p0, Lcom/android/settings/motion2013/SideMotionSettings;->mPeek:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SideMotionSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 87
    .local v1, ps:Landroid/preference/PreferenceScreen;
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v2, 0x0

    .line 168
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SideMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    const/4 v0, 0x1

    const v1, 0x7f090b11

    invoke-interface {p1, v2, v2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020196

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 175
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 179
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 186
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 181
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 182
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "helphub:section"

    const-string v2, "motion"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SideMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 184
    const/4 v1, 0x1

    goto :goto_0

    .line 179
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

    .line 123
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 124
    iget-boolean v0, p0, Lcom/android/settings/motion2013/SideMotionSettings;->isGoIntoQuideHub:Z

    if-nez v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SideMotionSettings;->isAllSideMotionDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SideMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "master_side_motion"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SideMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090d99

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SideMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "master_side_motion"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SideMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->autoTurnOffMotionEngine(Landroid/content/Context;)V

    .line 129
    iget-object v0, p0, Lcom/android/settings/motion2013/SideMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 132
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

    .line 150
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, key:Ljava/lang/String;
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    .line 152
    .local v1, value:I
    :goto_0
    const-string v4, "one_hand_operation"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SideMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "side_motion_one_hand_operation"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 158
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SideMotionSettings;->isAllSideMotionDisabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SideMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "master_side_motion"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SideMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->autoTurnOffMotionEngine(Landroid/content/Context;)V

    .line 161
    iget-object v4, p0, Lcom/android/settings/motion2013/SideMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 163
    :cond_1
    return v2

    .end local v1           #value:I
    :cond_2
    move v1, v3

    .line 151
    goto :goto_0

    .line 154
    .restart local v1       #value:I
    :cond_3
    const-string v4, "peek"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SideMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "side_motion_peek"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/motion2013/SideMotionSettings;->isGoIntoQuideHub:Z

    .line 146
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 92
    iget-boolean v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 93
    .local v1, super_mOpenDetailMenu:Z
    iput-boolean v4, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 96
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 97
    iput-boolean v4, p0, Lcom/android/settings/motion2013/SideMotionSettings;->isGoIntoQuideHub:Z

    .line 99
    iget-object v2, p0, Lcom/android/settings/motion2013/SideMotionSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 100
    iget-object v2, p0, Lcom/android/settings/motion2013/SideMotionSettings;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SideMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SideMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/motion2013/SideMotionSettings;->mResolver:Landroid/content/ContentResolver;

    .line 106
    iget-object v5, p0, Lcom/android/settings/motion2013/SideMotionSettings;->mOneHandOperation:Landroid/preference/SwitchPreferenceScreen;

    iget-object v2, p0, Lcom/android/settings/motion2013/SideMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "side_motion_one_hand_operation"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 107
    iget-object v5, p0, Lcom/android/settings/motion2013/SideMotionSettings;->mPeek:Landroid/preference/SwitchPreferenceScreen;

    iget-object v2, p0, Lcom/android/settings/motion2013/SideMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "side_motion_peek"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 109
    iget-object v2, p0, Lcom/android/settings/motion2013/SideMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "master_side_motion"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_3

    move v0, v3

    .line 110
    .local v0, sideMotionEngineState:Z
    :goto_2
    iget-object v2, p0, Lcom/android/settings/motion2013/SideMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 112
    iget-object v2, p0, Lcom/android/settings/motion2013/SideMotionSettings;->mOneHandOperation:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 113
    iget-object v2, p0, Lcom/android/settings/motion2013/SideMotionSettings;->mPeek:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 116
    iput-boolean v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 117
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->openSearchDetailMenu()V

    .line 119
    return-void

    .end local v0           #sideMotionEngineState:Z
    :cond_1
    move v2, v4

    .line 106
    goto :goto_0

    :cond_2
    move v2, v4

    .line 107
    goto :goto_1

    :cond_3
    move v0, v4

    .line 109
    goto :goto_2
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 136
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 137
    iget-object v0, p0, Lcom/android/settings/motion2013/SideMotionSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/settings/motion2013/SideMotionSettings;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SideMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 141
    :cond_0
    return-void
.end method

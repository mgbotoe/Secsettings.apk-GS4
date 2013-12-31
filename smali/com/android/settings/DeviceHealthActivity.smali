.class public Lcom/android/settings/DeviceHealthActivity;
.super Landroid/preference/PreferenceActivity;
.source "DeviceHealthActivity.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mBackStackCount:I

.field private mFragmentApps:Landroid/app/Fragment;

.field private mFragmentBattery:Landroid/app/Fragment;

.field private mFragmentData:Landroid/app/Fragment;

.field private mIsHomeEnabled:Z

.field private mIsHomeEnabledInMain:Z

.field private mSelectedTab:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 41
    iput-boolean v1, p0, Lcom/android/settings/DeviceHealthActivity;->mIsHomeEnabled:Z

    .line 42
    iput-boolean v1, p0, Lcom/android/settings/DeviceHealthActivity;->mIsHomeEnabledInMain:Z

    .line 44
    const-string v0, "tag_battery"

    iput-object v0, p0, Lcom/android/settings/DeviceHealthActivity;->mSelectedTab:Ljava/lang/String;

    .line 46
    iput v1, p0, Lcom/android/settings/DeviceHealthActivity;->mBackStackCount:I

    return-void
.end method

.method private findFragmentByTab(Landroid/app/ActionBar$Tab;)Landroid/app/Fragment;
    .locals 2
    .parameter "tab"

    .prologue
    .line 160
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    const v1, 0x7f0915e5

    invoke-virtual {p0, v1}, Lcom/android/settings/DeviceHealthActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/DeviceHealthActivity;->mFragmentBattery:Landroid/app/Fragment;

    .line 164
    :goto_0
    return-object v0

    .line 161
    :cond_0
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    const v1, 0x7f0915e6

    invoke-virtual {p0, v1}, Lcom/android/settings/DeviceHealthActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/DeviceHealthActivity;->mFragmentApps:Landroid/app/Fragment;

    goto :goto_0

    .line 162
    :cond_1
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    const v1, 0x7f0915e7

    invoke-virtual {p0, v1}, Lcom/android/settings/DeviceHealthActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/DeviceHealthActivity;->mFragmentData:Landroid/app/Fragment;

    goto :goto_0

    .line 163
    :cond_2
    const-string v0, "Device Health"

    const-string v1, "Unknown tab selected! Using default tab."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, Lcom/android/settings/DeviceHealthActivity;->mFragmentBattery:Landroid/app/Fragment;

    goto :goto_0
.end method

.method private hideActionTabs()V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/settings/DeviceHealthActivity;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 206
    return-void
.end method

.method private setHomeEnabled(Z)V
    .locals 1
    .parameter "state"

    .prologue
    .line 213
    iput-boolean p1, p0, Lcom/android/settings/DeviceHealthActivity;->mIsHomeEnabled:Z

    .line 214
    iget-object v0, p0, Lcom/android/settings/DeviceHealthActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 215
    return-void
.end method

.method private showActionTabs()V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/settings/DeviceHealthActivity;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 210
    return-void
.end method

.method private updateActionBar()V
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lcom/android/settings/DeviceHealthActivity;->mBackStackCount:I

    if-gtz v0, :cond_0

    .line 196
    invoke-direct {p0}, Lcom/android/settings/DeviceHealthActivity;->showActionTabs()V

    .line 197
    iget-boolean v0, p0, Lcom/android/settings/DeviceHealthActivity;->mIsHomeEnabledInMain:Z

    invoke-direct {p0, v0}, Lcom/android/settings/DeviceHealthActivity;->setHomeEnabled(Z)V

    .line 202
    :goto_0
    return-void

    .line 199
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/DeviceHealthActivity;->hideActionTabs()V

    .line 200
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/DeviceHealthActivity;->setHomeEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 189
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onBackPressed()V

    .line 190
    iget v0, p0, Lcom/android/settings/DeviceHealthActivity;->mBackStackCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/settings/DeviceHealthActivity;->mBackStackCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/DeviceHealthActivity;->mBackStackCount:I

    .line 191
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/DeviceHealthActivity;->updateActionBar()V

    .line 192
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 50
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_ATT_Device_Health_Enabled"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v7, :cond_4

    .line 53
    const v4, 0x7f040067

    invoke-virtual {p0, v4}, Lcom/android/settings/DeviceHealthActivity;->setContentView(I)V

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/DeviceHealthActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mActionBar:Landroid/app/ActionBar;

    .line 55
    iget-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mActionBar:Landroid/app/ActionBar;

    const v5, 0x7f0915e4

    invoke-virtual {v4, v5}, Landroid/app/ActionBar;->setTitle(I)V

    .line 56
    iget-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v4}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v4

    const v5, 0x7f0915e5

    invoke-virtual {v4, v5}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v2

    .line 57
    .local v2, tabBattery:Landroid/app/ActionBar$Tab;
    iget-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v4}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v4

    const v5, 0x7f0915e6

    invoke-virtual {v4, v5}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v1

    .line 58
    .local v1, tabApps:Landroid/app/ActionBar$Tab;
    iget-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v4}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v4

    const v5, 0x7f0915e7

    invoke-virtual {v4, v5}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v3

    .line 60
    .local v3, tabData:Landroid/app/ActionBar$Tab;
    if-nez p1, :cond_0

    .line 61
    new-instance v4, Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-direct {v4}, Lcom/android/settings/fuelgauge/PowerUsageSummary;-><init>()V

    iput-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mFragmentBattery:Landroid/app/Fragment;

    .line 62
    new-instance v4, Lcom/android/settings/applications/ManageApplications;

    invoke-direct {v4}, Lcom/android/settings/applications/ManageApplications;-><init>()V

    iput-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mFragmentApps:Landroid/app/Fragment;

    .line 63
    new-instance v4, Lcom/android/settings/DataUsageSummary;

    invoke-direct {v4}, Lcom/android/settings/DataUsageSummary;-><init>()V

    iput-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mFragmentData:Landroid/app/Fragment;

    .line 65
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 66
    .local v0, appsArg:Landroid/os/Bundle;
    const-string v4, "classname"

    const-string v5, ".RunningServices"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v4, "hidetabs"

    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 68
    iget-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mFragmentApps:Landroid/app/Fragment;

    invoke-virtual {v4, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 70
    iget-boolean v4, p0, Lcom/android/settings/DeviceHealthActivity;->mIsHomeEnabledInMain:Z

    iput-boolean v4, p0, Lcom/android/settings/DeviceHealthActivity;->mIsHomeEnabled:Z

    .line 72
    invoke-direct {p0}, Lcom/android/settings/DeviceHealthActivity;->updateActionBar()V

    .line 73
    iget-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v4, v2, v8}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;I)V

    .line 74
    iget-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v4, v1, v7}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;I)V

    .line 75
    iget-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v4, v3, v9}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;I)V

    .line 105
    .end local v0           #appsArg:Landroid/os/Bundle;
    .end local v1           #tabApps:Landroid/app/ActionBar$Tab;
    .end local v2           #tabBattery:Landroid/app/ActionBar$Tab;
    .end local v3           #tabData:Landroid/app/ActionBar$Tab;
    :goto_0
    return-void

    .line 78
    .restart local v1       #tabApps:Landroid/app/ActionBar$Tab;
    .restart local v2       #tabBattery:Landroid/app/ActionBar$Tab;
    .restart local v3       #tabData:Landroid/app/ActionBar$Tab;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DeviceHealthActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "tag_battery"

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mFragmentBattery:Landroid/app/Fragment;

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/DeviceHealthActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "tag_apps"

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mFragmentApps:Landroid/app/Fragment;

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/DeviceHealthActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "tag_data"

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mFragmentData:Landroid/app/Fragment;

    .line 82
    iget-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mFragmentBattery:Landroid/app/Fragment;

    if-nez v4, :cond_1

    new-instance v4, Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-direct {v4}, Lcom/android/settings/fuelgauge/PowerUsageSummary;-><init>()V

    iput-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mFragmentBattery:Landroid/app/Fragment;

    .line 83
    :cond_1
    iget-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mFragmentApps:Landroid/app/Fragment;

    if-nez v4, :cond_2

    .line 84
    new-instance v4, Lcom/android/settings/applications/ManageApplications;

    invoke-direct {v4}, Lcom/android/settings/applications/ManageApplications;-><init>()V

    iput-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mFragmentApps:Landroid/app/Fragment;

    .line 85
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 86
    .restart local v0       #appsArg:Landroid/os/Bundle;
    const-string v4, "classname"

    const-string v5, ".RunningServices"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v4, "hidetabs"

    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 88
    iget-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mFragmentApps:Landroid/app/Fragment;

    invoke-virtual {v4, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 90
    .end local v0           #appsArg:Landroid/os/Bundle;
    :cond_2
    iget-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mFragmentData:Landroid/app/Fragment;

    if-nez v4, :cond_3

    new-instance v4, Lcom/android/settings/DataUsageSummary;

    invoke-direct {v4}, Lcom/android/settings/DataUsageSummary;-><init>()V

    iput-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mFragmentData:Landroid/app/Fragment;

    .line 92
    :cond_3
    const-string v4, "is_home_enabled"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/DeviceHealthActivity;->mIsHomeEnabled:Z

    .line 93
    const-string v4, "selected_tab"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mSelectedTab:Ljava/lang/String;

    .line 94
    const-string v4, "backstack_count"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/settings/DeviceHealthActivity;->mBackStackCount:I

    .line 95
    invoke-direct {p0}, Lcom/android/settings/DeviceHealthActivity;->updateActionBar()V

    .line 96
    iget-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v5, p0, Lcom/android/settings/DeviceHealthActivity;->mSelectedTab:Ljava/lang/String;

    const-string v6, "tag_battery"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v4, v2, v8, v5}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;IZ)V

    .line 97
    iget-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v5, p0, Lcom/android/settings/DeviceHealthActivity;->mSelectedTab:Ljava/lang/String;

    const-string v6, "tag_apps"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v4, v1, v7, v5}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;IZ)V

    .line 98
    iget-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v5, p0, Lcom/android/settings/DeviceHealthActivity;->mSelectedTab:Ljava/lang/String;

    const-string v6, "tag_data"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v4, v3, v9, v5}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;IZ)V

    goto/16 :goto_0

    .line 103
    .end local v1           #tabApps:Landroid/app/ActionBar$Tab;
    .end local v2           #tabBattery:Landroid/app/ActionBar$Tab;
    .end local v3           #tabData:Landroid/app/ActionBar$Tab;
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/DeviceHealthActivity;->finish()V

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 123
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 129
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 135
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 132
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/settings/DeviceHealthActivity;->mIsHomeEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/DeviceHealthActivity;->onBackPressed()V

    .line 133
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 129
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 117
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 118
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 109
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 110
    const-string v0, "is_home_enabled"

    iget-boolean v1, p0, Lcom/android/settings/DeviceHealthActivity;->mIsHomeEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 111
    const-string v0, "selected_tab"

    iget-object v1, p0, Lcom/android/settings/DeviceHealthActivity;->mSelectedTab:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v0, "backstack_count"

    iget v1, p0, Lcom/android/settings/DeviceHealthActivity;->mBackStackCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 113
    return-void
.end method

.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 142
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 3
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 146
    const/4 v0, 0x0

    .line 147
    .local v0, tag:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    check-cast v1, Ljava/lang/String;

    const v2, 0x7f0915e5

    invoke-virtual {p0, v2}, Lcom/android/settings/DeviceHealthActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "tag_battery"

    .line 148
    :cond_0
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    check-cast v1, Ljava/lang/String;

    const v2, 0x7f0915e6

    invoke-virtual {p0, v2}, Lcom/android/settings/DeviceHealthActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "tag_apps"

    .line 149
    :cond_1
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    check-cast v1, Ljava/lang/String;

    const v2, 0x7f0915e7

    invoke-virtual {p0, v2}, Lcom/android/settings/DeviceHealthActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "tag_data"

    .line 150
    :cond_2
    iput-object v0, p0, Lcom/android/settings/DeviceHealthActivity;->mSelectedTab:Ljava/lang/String;

    .line 151
    invoke-direct {p0, p1}, Lcom/android/settings/DeviceHealthActivity;->findFragmentByTab(Landroid/app/ActionBar$Tab;)Landroid/app/Fragment;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_3

    const v1, 0x7f0b0134

    invoke-direct {p0, p1}, Lcom/android/settings/DeviceHealthActivity;->findFragmentByTab(Landroid/app/ActionBar$Tab;)Landroid/app/Fragment;

    move-result-object v2

    invoke-virtual {p2, v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 152
    :cond_3
    return-void
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 157
    return-void
.end method

.method public startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V
    .locals 3
    .parameter "fragmentClass"
    .parameter "args"
    .parameter "titleRes"
    .parameter "titleText"
    .parameter "resultTo"
    .parameter "resultRequestCode"

    .prologue
    .line 171
    invoke-static {p0, p1, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    .line 172
    .local v0, f:Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/android/settings/DeviceHealthActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 173
    .local v1, transaction:Landroid/app/FragmentTransaction;
    const v2, 0x7f0b0134

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 174
    if-eqz p3, :cond_1

    .line 175
    invoke-virtual {v1, p3}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(I)Landroid/app/FragmentTransaction;

    .line 179
    :cond_0
    :goto_0
    const/16 v2, 0x1001

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 180
    const-string v2, ":android:prefs"

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 181
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 182
    iget v2, p0, Lcom/android/settings/DeviceHealthActivity;->mBackStackCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/settings/DeviceHealthActivity;->mBackStackCount:I

    .line 183
    invoke-direct {p0}, Lcom/android/settings/DeviceHealthActivity;->updateActionBar()V

    .line 184
    return-void

    .line 176
    :cond_1
    if-eqz p4, :cond_0

    .line 177
    invoke-virtual {v1, p4}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.class public Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WifiApAllowedListDelete.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mActionView:Landroid/view/View;

.field private mDeviceList:Landroid/preference/PreferenceScreen;

.field private mIsPrefClick:Z

.field private mIsTablet:Z

.field private mMenuItemOk:Landroid/view/MenuItem;

.field private mOkTextView:Landroid/widget/TextView;

.field private mRemoveButton:Landroid/view/View;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private okDisableOpacity:F

.field private okEnableOpacity:F

.field private selectAll:Landroid/widget/LinearLayout;

.field private selectAllCheck:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mIsPrefClick:Z

    .line 75
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->okEnableOpacity:F

    .line 76
    const v0, 0x3ecccccd

    iput v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->okDisableOpacity:F

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->selectAllCheck:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;)Landroid/preference/PreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->updateList()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->removeSelectedList()V

    return-void
.end method

.method private isAllDeviceChecked()Z
    .locals 2

    .prologue
    .line 275
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 276
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    check-cast v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 277
    const/4 v1, 0x0

    .line 279
    :goto_1
    return v1

    .line 275
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 279
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private reloadWhiteList()V
    .locals 4

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 242
    .local v1, wm:Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_0

    .line 243
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 244
    .local v0, msg:Landroid/os/Message;
    const/4 v2, 0x5

    iput v2, v0, Landroid/os/Message;->what:I

    .line 246
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 248
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private removeSelectedList()V
    .locals 8

    .prologue
    .line 218
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 219
    .local v2, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 221
    .local v0, b:Landroid/os/Bundle;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 222
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    .line 223
    .local v3, pref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 224
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v4

    .line 225
    .local v4, wl:Landroid/net/wifi/WifiApWhiteList;
    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/net/wifi/WifiApWhiteList;->removeWhiteList(Ljava/lang/String;)I

    .line 226
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "wifi"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    .line 227
    .local v5, wm:Landroid/net/wifi/WifiManager;
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 228
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v6, v6, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 229
    const/4 v6, 0x4

    iput v6, v2, Landroid/os/Message;->what:I

    .line 230
    const-string v6, "mac"

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 232
    if-eqz v5, :cond_0

    .line 233
    invoke-virtual {v5, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 221
    .end local v4           #wl:Landroid/net/wifi/WifiApWhiteList;
    .end local v5           #wm:Landroid/net/wifi/WifiManager;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 237
    .end local v3           #pref:Landroid/preference/CheckBoxPreference;
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->reloadWhiteList()V

    .line 238
    return-void
.end method

.method private updateList()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 283
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 284
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    check-cast v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 285
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mMenuItemOk:Landroid/view/MenuItem;

    if-eqz v1, :cond_0

    .line 286
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mMenuItemOk:Landroid/view/MenuItem;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 288
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mIsTablet:Z

    if-nez v1, :cond_1

    .line 289
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mRemoveButton:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 290
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mOkTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 291
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mOkTextView:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->okEnableOpacity:F

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 305
    :cond_1
    return-void

    .line 295
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mMenuItemOk:Landroid/view/MenuItem;

    if-eqz v1, :cond_3

    .line 296
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mMenuItemOk:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 298
    :cond_3
    iget-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mIsTablet:Z

    if-nez v1, :cond_4

    .line 299
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mRemoveButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 300
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mOkTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 301
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mOkTextView:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->okDisableOpacity:F

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 283
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updateOptionsMenuIcon(Z)V
    .locals 2
    .parameter "showIcon"

    .prologue
    const/4 v1, 0x0

    .line 194
    if-eqz p1, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mActionView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 196
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->setHasOptionsMenu(Z)V

    .line 201
    :goto_0
    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mActionView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 199
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->setHasOptionsMenu(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 15
    .parameter "savedInstanceState"

    .prologue
    .line 86
    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 89
    .local v1, activity:Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 91
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mIsTablet:Z

    .line 93
    const-string v10, "WifiApAllowedListDelete"

    const-string v11, "WifiApAllowedListDelete onActivityCreated"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-boolean v10, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mIsTablet:Z

    if-nez v10, :cond_0

    .line 95
    const/4 v10, 0x0

    const/16 v11, 0x8

    invoke-virtual {v0, v10, v11}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 97
    :cond_0
    iget-boolean v10, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mIsTablet:Z

    if-nez v10, :cond_1

    .line 98
    const v10, 0x7f020407

    invoke-virtual {v0, v10}, Landroid/app/ActionBar;->setIcon(I)V

    .line 101
    :cond_1
    const-string v10, "layout_inflater"

    invoke-virtual {v1, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 102
    .local v5, inflater:Landroid/view/LayoutInflater;
    const v10, 0x7f040166

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 103
    .local v7, view:Landroid/widget/LinearLayout;
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->getView()Landroid/view/View;

    move-result-object v3

    .line 104
    .local v3, currentView:Landroid/view/View;
    check-cast v3, Landroid/widget/LinearLayout;

    .end local v3           #currentView:Landroid/view/View;
    const/4 v10, 0x0

    invoke-virtual {v3, v7, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 106
    const v10, 0x7f0b03d6

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    iput-object v10, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->selectAll:Landroid/widget/LinearLayout;

    .line 107
    const v10, 0x7f0b03d7

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->selectAllCheck:Landroid/view/View;

    .line 108
    iget-object v10, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->selectAll:Landroid/widget/LinearLayout;

    new-instance v11, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete$1;

    invoke-direct {v11, p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete$1;-><init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;)V

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    const-string v10, "device_list_category"

    invoke-virtual {p0, v10}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceScreen;

    iput-object v10, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    .line 122
    iget-boolean v10, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mIsTablet:Z

    if-eqz v10, :cond_2

    .line 123
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->setHasOptionsMenu(Z)V

    .line 154
    :goto_0
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v8

    .line 155
    .local v8, whiteList:Landroid/net/wifi/WifiApWhiteList;
    invoke-virtual {v8}, Landroid/net/wifi/WifiApWhiteList;->getIterator()Ljava/util/Iterator;

    move-result-object v6

    .line 156
    .local v6, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/net/wifi/WifiApWhiteList$WhiteList;>;"
    if-eqz v6, :cond_3

    .line 157
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 158
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiApWhiteList$WhiteList;

    .line 159
    .local v9, wl:Landroid/net/wifi/WifiApWhiteList$WhiteList;
    new-instance v4, Lcom/android/settings/wifi/mobileap/WifiApAllowedDeleteDevice;

    invoke-direct {v4, v1}, Lcom/android/settings/wifi/mobileap/WifiApAllowedDeleteDevice;-><init>(Landroid/content/Context;)V

    .line 160
    .local v4, dev:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v9}, Landroid/net/wifi/WifiApWhiteList$WhiteList;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 161
    invoke-virtual {v9}, Landroid/net/wifi/WifiApWhiteList$WhiteList;->getMac()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/android/settings/wifi/mobileap/WifiApAllowedDeleteDevice;->setSummary(Ljava/lang/CharSequence;)V

    .line 162
    invoke-virtual {v4, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 164
    iget-object v10, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v10, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 125
    .end local v4           #dev:Landroid/preference/CheckBoxPreference;
    .end local v6           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/net/wifi/WifiApWhiteList$WhiteList;>;"
    .end local v8           #whiteList:Landroid/net/wifi/WifiApWhiteList;
    .end local v9           #wl:Landroid/net/wifi/WifiApWhiteList$WhiteList;
    :cond_2
    const v10, 0x7f0401b9

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mActionView:Landroid/view/View;

    .line 126
    iget-object v10, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mActionView:Landroid/view/View;

    const v11, 0x7f0b04b0

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mRemoveButton:Landroid/view/View;

    .line 127
    iget-object v10, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mRemoveButton:Landroid/view/View;

    const v11, 0x7f0b04b1

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mOkTextView:Landroid/widget/TextView;

    .line 128
    iget-object v10, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mOkTextView:Landroid/widget/TextView;

    const v11, 0x7f0903ee

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 129
    iget-object v10, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mOkTextView:Landroid/widget/TextView;

    iget v11, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->okDisableOpacity:F

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setAlpha(F)V

    .line 130
    iget-object v10, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mRemoveButton:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setEnabled(Z)V

    .line 131
    iget-object v10, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mRemoveButton:Landroid/view/View;

    new-instance v11, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete$2;

    invoke-direct {v11, p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete$2;-><init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v10, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mActionView:Landroid/view/View;

    const v11, 0x7f0b04ae

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 140
    .local v2, cancelButton:Landroid/view/View;
    new-instance v10, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete$3;

    invoke-direct {v10, p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete$3;-><init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;)V

    invoke-virtual {v2, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    const/16 v10, 0x10

    const/16 v11, 0x10

    invoke-virtual {v0, v10, v11}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 148
    iget-object v10, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mActionView:Landroid/view/View;

    new-instance v11, Landroid/app/ActionBar$LayoutParams;

    const/4 v12, -0x2

    const/4 v13, -0x2

    const/16 v14, 0x15

    invoke-direct {v11, v12, v13, v14}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v10, v11}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    goto/16 :goto_0

    .line 167
    .end local v2           #cancelButton:Landroid/view/View;
    .restart local v6       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/net/wifi/WifiApWhiteList$WhiteList;>;"
    .restart local v8       #whiteList:Landroid/net/wifi/WifiApWhiteList;
    :cond_3
    iget-boolean v10, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mIsTablet:Z

    if-nez v10, :cond_4

    .line 168
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->orientation:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_5

    const/4 v10, 0x1

    :goto_2
    invoke-direct {p0, v10}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->updateOptionsMenuIcon(Z)V

    .line 170
    :cond_4
    return-void

    .line 168
    :cond_5
    const/4 v10, 0x0

    goto :goto_2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mIsTablet:Z

    if-nez v0, :cond_0

    .line 188
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->updateOptionsMenuIcon(Z)V

    .line 189
    :cond_0
    const-string v0, "WifiApAllowedListDelete"

    const-string v1, "updateList due to onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 191
    return-void

    .line 188
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 81
    const v0, 0x7f0700c0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->addPreferencesFromResource(I)V

    .line 82
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 174
    const/4 v0, 0x1

    const v1, 0x7f090173

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200cf

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 178
    const/4 v0, 0x2

    const v1, 0x7f0903ee

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mMenuItemOk:Landroid/view/MenuItem;

    .line 179
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mMenuItemOk:Landroid/view/MenuItem;

    const v1, 0x7f0200d0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 180
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mMenuItemOk:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 182
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->updateList()V

    .line 183
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 205
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 214
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 207
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->finish()V

    goto :goto_0

    .line 210
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->removeSelectedList()V

    .line 211
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->finish()V

    goto :goto_0

    .line 205
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "checked"

    .prologue
    const/4 v3, 0x1

    .line 262
    iget-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mIsPrefClick:Z

    if-eqz v1, :cond_0

    .line 271
    .end local p1
    .end local p2
    :goto_0
    return v3

    .line 264
    .restart local p1
    .restart local p2
    :cond_0
    iput-boolean v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mIsPrefClick:Z

    .line 265
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 266
    .local v0, isChecked:Z
    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1
    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 267
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->selectAllCheck:Landroid/view/View;

    check-cast v1, Landroid/widget/Checkable;

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->isAllDeviceChecked()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 268
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mIsPrefClick:Z

    .line 270
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->updateList()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 252
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 253
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->selectAllCheck:Landroid/view/View;

    check-cast v2, Landroid/widget/Checkable;

    invoke-interface {v2}, Landroid/widget/Checkable;->isChecked()Z

    move-result v1

    .line 254
    .local v1, isChecked:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 255
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/wifi/mobileap/WifiApAllowedDeleteDevice;

    check-cast v2, Lcom/android/settings/wifi/mobileap/WifiApAllowedDeleteDevice;

    invoke-virtual {v2, v1}, Lcom/android/settings/wifi/mobileap/WifiApAllowedDeleteDevice;->setChecked(Z)V

    .line 254
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 257
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->updateList()V

    .line 258
    return-void
.end method

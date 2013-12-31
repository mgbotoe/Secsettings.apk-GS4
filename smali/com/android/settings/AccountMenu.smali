.class public Lcom/android/settings/AccountMenu;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AccountMenu.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/AccountMenu$EmptyDrawable;,
        Lcom/android/settings/AccountMenu$IconResizer;,
        Lcom/android/settings/AccountMenu$FragContainer;
    }
.end annotation


# static fields
.field protected static sResizer:Lcom/android/settings/AccountMenu$IconResizer;


# instance fields
.field mAccounList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/AccountMenu$FragContainer;",
            ">;"
        }
    .end annotation
.end field

.field private mAccountCategory:Landroid/preference/PreferenceCategory;

.field private mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

.field private final mBrAccountMenu:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mRefreshListFilter:Landroid/content/IntentFilter;

.field private mRegistered:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/AccountMenu;->mRegistered:Z

    .line 82
    new-instance v0, Lcom/android/settings/AccountMenu$1;

    invoke-direct {v0, p0}, Lcom/android/settings/AccountMenu$1;-><init>(Lcom/android/settings/AccountMenu;)V

    iput-object v0, p0, Lcom/android/settings/AccountMenu;->mBrAccountMenu:Landroid/content/BroadcastReceiver;

    .line 507
    return-void
.end method

.method private updateAccountsPrference()V
    .locals 14

    .prologue
    const v13, 0x7f090967

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 178
    iget-object v0, p0, Lcom/android/settings/AccountMenu;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0}, Lcom/android/settings/accounts/AuthenticatorHelper;->getEnabledAccountTypes()[Ljava/lang/String;

    move-result-object v5

    .line 179
    iget-object v0, p0, Lcom/android/settings/AccountMenu;->mAccounList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 180
    iget-object v0, p0, Lcom/android/settings/AccountMenu;->mAccountCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 182
    array-length v6, v5

    move v4, v3

    :goto_0
    if-ge v4, v6, :cond_c

    aget-object v7, v5, v4

    .line 183
    iget-object v0, p0, Lcom/android/settings/AccountMenu;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    iget-object v1, p0, Lcom/android/settings/AccountMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v7}, Lcom/android/settings/accounts/AuthenticatorHelper;->getLabelForType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 186
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v8, "CscFeature_Common_MyPhonebookBrandName"

    invoke-virtual {v0, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    const-string v0, "com.android.tmo_myphonebook"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_MyPhonebookBrandName"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 196
    :cond_0
    if-nez v1, :cond_2

    .line 182
    :cond_1
    :goto_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 200
    :cond_2
    iget-object v0, p0, Lcom/android/settings/AccountMenu;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v8

    .line 201
    array-length v0, v8

    if-ne v0, v2, :cond_8

    iget-object v0, p0, Lcom/android/settings/AccountMenu;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, v7}, Lcom/android/settings/accounts/AuthenticatorHelper;->hasAccountPreferences(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v2

    .line 205
    :goto_2
    array-length v9, v8

    if-lez v9, :cond_4

    sget-object v9, Lcom/android/settings/accounts/AccountCommon;->facebookSSOAccountType:Ljava/lang/String;

    if-eqz v9, :cond_4

    .line 206
    sget-object v9, Lcom/android/settings/accounts/AccountCommon;->facebookSSOAccountType:Ljava/lang/String;

    aget-object v10, v8, v3

    iget-object v10, v10, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 207
    iget-object v0, p0, Lcom/android/settings/AccountMenu;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v9, "com.sec.android.app.sns3.facebook"

    invoke-virtual {v0, v9}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 209
    if-eqz v0, :cond_3

    array-length v0, v0

    if-gtz v0, :cond_1

    :cond_3
    move v0, v3

    .line 220
    :cond_4
    :goto_3
    array-length v9, v8

    if-lez v9, :cond_6

    sget-object v9, Lcom/android/settings/accounts/AccountCommon;->twitterSSOAccountType:Ljava/lang/String;

    if-eqz v9, :cond_6

    .line 221
    sget-object v9, Lcom/android/settings/accounts/AccountCommon;->twitterSSOAccountType:Ljava/lang/String;

    aget-object v10, v8, v3

    iget-object v10, v10, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 222
    iget-object v0, p0, Lcom/android/settings/AccountMenu;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v9, "com.sec.android.app.sns3.twitter"

    invoke-virtual {v0, v9}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 224
    if-eqz v0, :cond_5

    array-length v0, v0

    if-gtz v0, :cond_1

    :cond_5
    move v0, v3

    .line 233
    :cond_6
    :goto_4
    new-instance v9, Lcom/android/settings/AccountMenu$FragContainer;

    invoke-direct {v9, p0}, Lcom/android/settings/AccountMenu$FragContainer;-><init>(Lcom/android/settings/AccountMenu;)V

    .line 235
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 236
    if-eqz v0, :cond_b

    .line 237
    invoke-virtual {v9, v13}, Lcom/android/settings/AccountMenu$FragContainer;->setBreadCrumbTitleRes(I)V

    .line 238
    invoke-virtual {v9, v13}, Lcom/android/settings/AccountMenu$FragContainer;->setBreadCrumbShortTitleRes(I)V

    .line 239
    const-class v0, Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/android/settings/AccountMenu$FragContainer;->setTagetFragmentName(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v9}, Lcom/android/settings/AccountMenu$FragContainer;->getExtraBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v11, "account_type"

    invoke-virtual {v0, v11, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-virtual {v9}, Lcom/android/settings/AccountMenu$FragContainer;->getExtraBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v11, "account"

    aget-object v12, v8, v3

    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 246
    const-string v0, "account"

    aget-object v8, v8, v3

    invoke-virtual {v10, v0, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 260
    :cond_7
    :goto_5
    invoke-virtual {v9}, Lcom/android/settings/AccountMenu$FragContainer;->getFragement()Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 261
    invoke-virtual {v9, v7}, Lcom/android/settings/AccountMenu$FragContainer;->setId(Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/android/settings/AccountMenu;->mAccounList:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    new-instance v0, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/AccountMenu;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v0, v8, v9}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 266
    invoke-virtual {v0, v7}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 267
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 269
    iget-object v1, p0, Lcom/android/settings/AccountMenu;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    iget-object v8, p0, Lcom/android/settings/AccountMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v8, v7}, Lcom/android/settings/accounts/AuthenticatorHelper;->getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 270
    iget-object v7, p0, Lcom/android/settings/AccountMenu;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v7}, Lcom/android/settings/AccountMenu;->getResizer(Landroid/content/Context;)Lcom/android/settings/AccountMenu$IconResizer;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/android/settings/AccountMenu$IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 272
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 273
    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 275
    iget-object v1, p0, Lcom/android/settings/AccountMenu;->mAccountCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    :cond_8
    move v0, v3

    .line 201
    goto/16 :goto_2

    .line 214
    :cond_9
    const-string v9, "com.sec.android.app.sns3.facebook"

    aget-object v10, v8, v3

    iget-object v10, v10, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 215
    sget-object v1, Lcom/android/settings/accounts/AccountCommon;->facebookSSOAccountLabel:Ljava/lang/String;

    goto/16 :goto_3

    .line 229
    :cond_a
    const-string v9, "com.sec.android.app.sns3.twitter"

    aget-object v10, v8, v3

    iget-object v10, v10, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 230
    sget-object v1, Lcom/android/settings/accounts/AccountCommon;->twitterSSOAccountLabel:Ljava/lang/String;

    goto/16 :goto_4

    :cond_b
    move-object v0, v1

    .line 248
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v9, v0}, Lcom/android/settings/AccountMenu$FragContainer;->setBreadCrumbTitle(Ljava/lang/String;)V

    move-object v0, v1

    .line 249
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v9, v0}, Lcom/android/settings/AccountMenu$FragContainer;->setBreadCrumbShortTitle(Ljava/lang/String;)V

    .line 250
    const-class v0, Lcom/android/settings/accounts/ManageAccountsSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/android/settings/AccountMenu$FragContainer;->setTagetFragmentName(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v9}, Lcom/android/settings/AccountMenu$FragContainer;->getExtraBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v8, "account_type"

    invoke-virtual {v0, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string v0, "account_type"

    invoke-virtual {v10, v0, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-virtual {p0}, Lcom/android/settings/AccountMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 255
    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->isMultiPane()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 256
    const-string v0, "account_label"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v0, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 277
    :cond_c
    return-void
.end method


# virtual methods
.method protected getResizer(Landroid/content/Context;)Lcom/android/settings/AccountMenu$IconResizer;
    .locals 4
    .parameter "context"

    .prologue
    .line 389
    sget-object v2, Lcom/android/settings/AccountMenu;->sResizer:Lcom/android/settings/AccountMenu$IconResizer;

    if-nez v2, :cond_0

    .line 390
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 391
    .local v0, resources:Landroid/content/res/Resources;
    const v2, 0x7f0f0032

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    .line 392
    .local v1, size:I
    new-instance v2, Lcom/android/settings/AccountMenu$IconResizer;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-direct {v2, v1, v1, v3}, Lcom/android/settings/AccountMenu$IconResizer;-><init>(IILandroid/util/DisplayMetrics;)V

    sput-object v2, Lcom/android/settings/AccountMenu;->sResizer:Lcom/android/settings/AccountMenu$IconResizer;

    .line 394
    .end local v0           #resources:Landroid/content/res/Resources;
    .end local v1           #size:I
    :cond_0
    sget-object v2, Lcom/android/settings/AccountMenu;->sResizer:Lcom/android/settings/AccountMenu$IconResizer;

    return-object v2
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 2
    .parameter "accounts"

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/settings/AccountMenu;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    iget-object v1, p0, Lcom/android/settings/AccountMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/AuthenticatorHelper;->updateAuthDescriptions(Landroid/content/Context;)V

    .line 282
    iget-object v0, p0, Lcom/android/settings/AccountMenu;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    iget-object v1, p0, Lcom/android/settings/AccountMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/accounts/AuthenticatorHelper;->onAccountsUpdated(Landroid/content/Context;[Landroid/accounts/Account;)V

    .line 283
    invoke-direct {p0}, Lcom/android/settings/AccountMenu;->updateAccountsPrference()V

    .line 284
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 97
    const v0, 0x7f070006

    invoke-virtual {p0, v0}, Lcom/android/settings/AccountMenu;->addPreferencesFromResource(I)V

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/AccountMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AccountMenu;->mContext:Landroid/content/Context;

    .line 100
    new-instance v0, Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-direct {v0}, Lcom/android/settings/accounts/AuthenticatorHelper;-><init>()V

    iput-object v0, p0, Lcom/android/settings/AccountMenu;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    .line 105
    const-string v0, "vzw_bua_plus"

    invoke-virtual {p0, v0}, Lcom/android/settings/AccountMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    const-string v0, "vzw_bua_plus"

    invoke-virtual {p0, v0}, Lcom/android/settings/AccountMenu;->removePreference(Ljava/lang/String;)V

    .line 110
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/AccountMenu;->mRefreshListFilter:Landroid/content/IntentFilter;

    .line 111
    iget-object v0, p0, Lcom/android/settings/AccountMenu;->mRefreshListFilter:Landroid/content/IntentFilter;

    const-string v1, "com.sec.android.app.sns3.TwitterSSOAccountsRemoved"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/android/settings/AccountMenu;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/android/settings/AccountMenu;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/accounts/AccountCommon;->checkAccountSSO(Landroid/content/Context;)V

    .line 114
    iget-object v0, p0, Lcom/android/settings/AccountMenu;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/AccountMenu;->mBrAccountMenu:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/AccountMenu;->mRefreshListFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/AccountMenu;->mRegistered:Z

    .line 117
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 138
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 139
    iget-object v0, p0, Lcom/android/settings/AccountMenu;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/AccountMenu;->mRegistered:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/settings/AccountMenu;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/AccountMenu;->mBrAccountMenu:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 141
    const-string v0, "AccountMenu"

    const-string v1, "AccountMenu - Finish unregisterReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/AccountMenu;->mRegistered:Z

    .line 144
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 133
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 134
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 9
    .parameter "preference"

    .prologue
    const/4 v6, 0x0

    .line 289
    iget-object v1, p0, Lcom/android/settings/AccountMenu;->mAccounList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/AccountMenu$FragContainer;

    .line 290
    .local v7, fc:Lcom/android/settings/AccountMenu$FragContainer;
    invoke-virtual {v7}, Lcom/android/settings/AccountMenu$FragContainer;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 291
    invoke-virtual {p0}, Lcom/android/settings/AccountMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 292
    .local v0, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v7}, Lcom/android/settings/AccountMenu$FragContainer;->getTargetFragmentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Lcom/android/settings/AccountMenu$FragContainer;->getFragement()Landroid/app/Fragment;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v7}, Lcom/android/settings/AccountMenu$FragContainer;->getBreadCrumbTitleRes()I

    move-result v3

    invoke-virtual {v7}, Lcom/android/settings/AccountMenu$FragContainer;->getBreadCrumbTitle()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 296
    const/4 v6, 0x1

    .line 299
    .end local v0           #preferenceActivity:Landroid/preference/PreferenceActivity;
    .end local v7           #fc:Lcom/android/settings/AccountMenu$FragContainer;
    :cond_1
    return v6
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 121
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 122
    iget-object v1, p0, Lcom/android/settings/AccountMenu;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    iget-object v2, p0, Lcom/android/settings/AccountMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/settings/accounts/AuthenticatorHelper;->updateAuthDescriptions(Landroid/content/Context;)V

    .line 123
    iget-object v1, p0, Lcom/android/settings/AccountMenu;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    iget-object v2, p0, Lcom/android/settings/AccountMenu;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/accounts/AuthenticatorHelper;->onAccountsUpdated(Landroid/content/Context;[Landroid/accounts/Account;)V

    .line 125
    iget-object v1, p0, Lcom/android/settings/AccountMenu;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v1}, Lcom/android/settings/accounts/AuthenticatorHelper;->getEnabledAccountTypes()[Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, accountTypes:[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/settings/AccountMenu;->mAccounList:Ljava/util/List;

    .line 127
    const-string v1, "account_menu_category"

    invoke-virtual {p0, v1}, Lcom/android/settings/AccountMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings/AccountMenu;->mAccountCategory:Landroid/preference/PreferenceCategory;

    .line 128
    invoke-direct {p0}, Lcom/android/settings/AccountMenu;->updateAccountsPrference()V

    .line 129
    return-void
.end method

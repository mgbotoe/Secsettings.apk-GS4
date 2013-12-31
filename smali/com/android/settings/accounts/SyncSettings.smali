.class public Lcom/android/settings/accounts/SyncSettings;
.super Lcom/android/settings/accounts/AccountPreferenceBase;
.source "SyncSettings.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;
.implements Lcom/android/settings/DialogCreatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accounts/SyncSettings$Add_AccountPreference;
    }
.end annotation


# instance fields
.field public b_addaccounticon:Z

.field private mAuthorities:[Ljava/lang/String;

.field private mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;-><init>()V

    .line 254
    return-void
.end method

.method private removeAccountPreferences()V
    .locals 3

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 245
    .local v1, parent:Landroid/preference/PreferenceScreen;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 246
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    instance-of v2, v2, Lcom/android/settings/AccountPreference;

    if-eqz v2, :cond_0

    .line 247
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 249
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 252
    :cond_1
    return-void
.end method

.method private startAccountSettings(Lcom/android/settings/AccountPreference;)V
    .locals 3
    .parameter "acctPref"

    .prologue
    .line 212
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ACCOUNT_SYNC_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 213
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "account"

    invoke-virtual {p1}, Lcom/android/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 214
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 215
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 216
    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/SyncSettings;->startActivity(Landroid/content/Intent;)V

    .line 217
    return-void
.end method

.method private startAddAccountSettings()V
    .locals 3

    .prologue
    .line 220
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ADD_ACCOUNT_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 221
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "authorities"

    iget-object v2, p0, Lcom/android/settings/accounts/SyncSettings;->mAuthorities:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 223
    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/SyncSettings;->startActivity(Landroid/content/Intent;)V

    .line 224
    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncSettings;->finish()V

    .line 225
    return-void
.end method

.method private startAddAccountSettings_newtype()V
    .locals 3

    .prologue
    .line 228
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ADD_ACCOUNT_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 229
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "authorities"

    iget-object v2, p0, Lcom/android/settings/accounts/SyncSettings;->mAuthorities:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 231
    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/SyncSettings;->startActivity(Landroid/content/Intent;)V

    .line 232
    return-void
.end method


# virtual methods
.method public bridge synthetic addPreferencesForType(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-super {p0, p1, p2}, Lcom/android/settings/accounts/AccountPreferenceBase;->addPreferencesForType(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 21
    .parameter "accounts"

    .prologue
    .line 282
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/SyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_1

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    const/4 v14, 0x0

    .line 285
    .local v14, isShownFacebook:Z
    const/4 v15, 0x0

    .line 287
    .local v15, isShownTwitter:Z
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/accounts/SyncSettings;->removeAccountPreferences()V

    .line 289
    new-instance v10, Lcom/android/settings/accounts/SyncSettings$Add_AccountPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/SyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v2}, Lcom/android/settings/accounts/SyncSettings$Add_AccountPreference;-><init>(Lcom/android/settings/accounts/SyncSettings;Landroid/content/Context;)V

    .line 290
    .local v10, add_preference:Lcom/android/settings/accounts/SyncSettings$Add_AccountPreference;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/accounts/SyncSettings;->b_addaccounticon:Z

    if-eqz v2, :cond_2

    .line 291
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/SyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 292
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/accounts/SyncSettings;->b_addaccounticon:Z

    .line 295
    :cond_2
    const/4 v12, 0x0

    .local v12, i:I
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v18, v0

    .local v18, n:I
    :goto_1
    move/from16 v0, v18

    if-ge v12, v0, :cond_13

    .line 296
    aget-object v8, p1, v12

    .line 297
    .local v8, account:Landroid/accounts/Account;
    iget-object v2, v8, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/accounts/SyncSettings;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 299
    .local v5, auths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v20, 0x1

    .line 300
    .local v20, showAccount:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/accounts/SyncSettings;->mAuthorities:[Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 301
    const/16 v20, 0x0

    .line 302
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/accounts/SyncSettings;->mAuthorities:[Ljava/lang/String;

    .local v11, arr$:[Ljava/lang/String;
    array-length v0, v11

    move/from16 v17, v0

    .local v17, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    :goto_2
    move/from16 v0, v17

    if-ge v13, v0, :cond_3

    aget-object v19, v11, v13

    .line 303
    .local v19, requestedAuthority:Ljava/lang/String;
    if-eqz v5, :cond_7

    .line 304
    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 305
    const/16 v20, 0x1

    .line 313
    .end local v11           #arr$:[Ljava/lang/String;
    .end local v13           #i$:I
    .end local v17           #len$:I
    .end local v19           #requestedAuthority:Ljava/lang/String;
    :cond_3
    const-string v2, "CHM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "CHC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_4
    const-string v2, "com.osp.app.signin"

    iget-object v3, v8, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 314
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/accounts/SyncSettings;->mAuthorities:[Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 315
    const/16 v16, 0x0

    .local v16, j:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/accounts/SyncSettings;->mAuthorities:[Ljava/lang/String;

    array-length v2, v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_8

    .line 316
    const-string v2, "com.android.contacts"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/accounts/SyncSettings;->mAuthorities:[Ljava/lang/String;

    aget-object v3, v3, v16

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "com.android.calendar"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/accounts/SyncSettings;->mAuthorities:[Ljava/lang/String;

    aget-object v3, v3, v16

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 318
    :cond_5
    const/16 v20, 0x0

    .line 319
    const-string v2, "AccountSettings"

    const-string v3, "removed samsung account for CMCC operator"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_6
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 302
    .end local v16           #j:I
    .restart local v11       #arr$:[Ljava/lang/String;
    .restart local v13       #i$:I
    .restart local v17       #len$:I
    .restart local v19       #requestedAuthority:Ljava/lang/String;
    :cond_7
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 326
    .end local v11           #arr$:[Ljava/lang/String;
    .end local v13           #i$:I
    .end local v17           #len$:I
    .end local v19           #requestedAuthority:Ljava/lang/String;
    :cond_8
    sget-object v2, Lcom/android/settings/accounts/AccountCommon;->facebookSSOAccountType:Ljava/lang/String;

    if-eqz v2, :cond_b

    const/4 v2, 0x1

    move/from16 v0, v20

    if-ne v0, v2, :cond_b

    .line 327
    sget-object v2, Lcom/android/settings/accounts/AccountCommon;->facebookSSOAccountType:Ljava/lang/String;

    iget-object v3, v8, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "com.sec.android.app.sns3.facebook"

    iget-object v3, v8, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 328
    :cond_9
    const/4 v2, 0x1

    if-ne v14, v2, :cond_a

    .line 329
    const/16 v20, 0x0

    .line 332
    :cond_a
    const/4 v14, 0x1

    .line 337
    :cond_b
    sget-object v2, Lcom/android/settings/accounts/AccountCommon;->twitterSSOAccountType:Ljava/lang/String;

    if-eqz v2, :cond_e

    const/4 v2, 0x1

    move/from16 v0, v20

    if-ne v0, v2, :cond_e

    .line 338
    sget-object v2, Lcom/android/settings/accounts/AccountCommon;->twitterSSOAccountType:Ljava/lang/String;

    iget-object v3, v8, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "com.sec.android.app.sns3.twitter"

    iget-object v3, v8, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 339
    :cond_c
    const/4 v2, 0x1

    if-ne v15, v2, :cond_d

    .line 340
    const/16 v20, 0x0

    .line 343
    :cond_d
    const/4 v15, 0x1

    .line 347
    :cond_e
    if-eqz v20, :cond_11

    .line 348
    const/4 v9, 0x0

    .line 351
    .local v9, accountToReplace:Landroid/accounts/Account;
    sget-object v2, Lcom/android/settings/accounts/AccountCommon;->facebookSSOAccountType:Ljava/lang/String;

    if-eqz v2, :cond_f

    sget-object v2, Lcom/android/settings/accounts/AccountCommon;->facebookSSOAccountType:Ljava/lang/String;

    iget-object v3, v8, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 352
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/SyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    const-string v3, "com.sec.android.app.sns3.facebook"

    invoke-virtual {v2, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v7

    .line 353
    .local v7, ac:[Landroid/accounts/Account;
    if-eqz v7, :cond_f

    array-length v2, v7

    if-lez v2, :cond_f

    .line 354
    const/4 v2, 0x0

    aget-object v9, v7, v2

    .line 359
    .end local v7           #ac:[Landroid/accounts/Account;
    :cond_f
    sget-object v2, Lcom/android/settings/accounts/AccountCommon;->twitterSSOAccountType:Ljava/lang/String;

    if-eqz v2, :cond_10

    sget-object v2, Lcom/android/settings/accounts/AccountCommon;->twitterSSOAccountType:Ljava/lang/String;

    iget-object v3, v8, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 360
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/SyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    const-string v3, "com.sec.android.app.sns3.twitter"

    invoke-virtual {v2, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v7

    .line 361
    .restart local v7       #ac:[Landroid/accounts/Account;
    if-eqz v7, :cond_10

    array-length v2, v7

    if-lez v2, :cond_10

    .line 362
    const/4 v2, 0x0

    aget-object v9, v7, v2

    .line 366
    .end local v7           #ac:[Landroid/accounts/Account;
    :cond_10
    iget-object v2, v8, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/accounts/SyncSettings;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 367
    .local v4, icon:Landroid/graphics/drawable/Drawable;
    new-instance v1, Lcom/android/settings/AccountPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/SyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v9, :cond_12

    move-object v3, v8

    :goto_4
    const/4 v6, 0x1

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/AccountPreference;-><init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/graphics/drawable/Drawable;Ljava/util/ArrayList;Z)V

    .line 369
    .local v1, preference:Lcom/android/settings/AccountPreference;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/SyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 370
    iget-object v2, v8, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/accounts/SyncSettings;->getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/AccountPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 295
    .end local v1           #preference:Lcom/android/settings/AccountPreference;
    .end local v4           #icon:Landroid/graphics/drawable/Drawable;
    .end local v9           #accountToReplace:Landroid/accounts/Account;
    :cond_11
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .restart local v4       #icon:Landroid/graphics/drawable/Drawable;
    .restart local v9       #accountToReplace:Landroid/accounts/Account;
    :cond_12
    move-object v3, v9

    .line 367
    goto :goto_4

    .line 373
    .end local v4           #icon:Landroid/graphics/drawable/Drawable;
    .end local v5           #auths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8           #account:Landroid/accounts/Account;
    .end local v9           #accountToReplace:Landroid/accounts/Account;
    .end local v20           #showAccount:Z
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/SyncSettings;->onSyncStateUpdated()V

    .line 376
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/SyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 377
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/accounts/SyncSettings;->startAddAccountSettings()V

    goto/16 :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 119
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 123
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "authorities"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accounts/SyncSettings;->mAuthorities:[Ljava/lang/String;

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncSettings;->updateAuthDescriptions()V

    .line 128
    invoke-static {v0}, Lcom/android/settings/accounts/AccountCommon;->checkAccountSSO(Landroid/content/Context;)V

    .line 129
    return-void
.end method

.method protected onAuthDescriptionsUpdated()V
    .locals 4

    .prologue
    .line 384
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 385
    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 386
    .local v2, pref:Landroid/preference/Preference;
    instance-of v3, v2, Lcom/android/settings/AccountPreference;

    if-eqz v3, :cond_0

    .line 387
    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/AccountPreference;

    .line 389
    .local v0, accPref:Lcom/android/settings/AccountPreference;
    invoke-virtual {v0}, Lcom/android/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/settings/accounts/SyncSettings;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/settings/AccountPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 390
    invoke-virtual {v0}, Lcom/android/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/settings/accounts/SyncSettings;->getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/settings/AccountPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 384
    .end local v0           #accPref:Lcom/android/settings/AccountPreference;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 393
    .end local v2           #pref:Landroid/preference/Preference;
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v4, 0x1

    .line 70
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const v1, 0x7f0700a6

    invoke-virtual {p0, v1}, Lcom/android/settings/accounts/SyncSettings;->addPreferencesFromResource(I)V

    .line 90
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    iput-boolean v4, p0, Lcom/android/settings/accounts/SyncSettings;->b_addaccounticon:Z

    .line 95
    invoke-virtual {p0, v4}, Lcom/android/settings/accounts/SyncSettings;->setHasOptionsMenu(Z)V

    .line 96
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "AccountSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate NullPointerException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 134
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/accounts/AccountPreferenceBase;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 188
    .local v0, view:Landroid/view/View;
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 100
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 105
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 107
    :goto_0
    return v0

    .line 102
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncSettings;->finish()V

    .line 107
    const/4 v0, 0x1

    goto :goto_0

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onPause()V
    .locals 0

    .prologue
    .line 57
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onPause()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preferences"
    .parameter "preference"

    .prologue
    .line 201
    instance-of v0, p2, Lcom/android/settings/AccountPreference;

    if-eqz v0, :cond_0

    .line 202
    check-cast p2, Lcom/android/settings/AccountPreference;

    .end local p2
    invoke-direct {p0, p2}, Lcom/android/settings/accounts/SyncSettings;->startAccountSettings(Lcom/android/settings/AccountPreference;)V

    .line 208
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 203
    .restart local p2
    :cond_0
    instance-of v0, p2, Lcom/android/settings/accounts/SyncSettings$Add_AccountPreference;

    if-eqz v0, :cond_1

    .line 204
    invoke-direct {p0}, Lcom/android/settings/accounts/SyncSettings;->startAddAccountSettings_newtype()V

    goto :goto_0

    .line 206
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public bridge synthetic onResume()V
    .locals 0

    .prologue
    .line 57
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 112
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onStart()V

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 114
    .local v0, activity:Landroid/app/Activity;
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, p0, v2, v3}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 115
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 194
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onStop()V

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 196
    .local v0, activity:Landroid/app/Activity;
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 197
    return-void
.end method

.method public showDialog(I)V
    .locals 3
    .parameter "dialogId"

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/settings/accounts/SyncSettings;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 237
    const-string v0, "AccountSettings"

    const-string v1, "Old dialog fragment not null!"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_0
    new-instance v0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;-><init>(Lcom/android/settings/DialogCreatable;I)V

    iput-object v0, p0, Lcom/android/settings/accounts/SyncSettings;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 240
    iget-object v0, p0, Lcom/android/settings/accounts/SyncSettings;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 241
    return-void
.end method

.method public bridge synthetic updateAuthDescriptions()V
    .locals 0

    .prologue
    .line 57
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->updateAuthDescriptions()V

    return-void
.end method

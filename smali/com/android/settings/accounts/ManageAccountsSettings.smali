.class public Lcom/android/settings/accounts/ManageAccountsSettings;
.super Lcom/android/settings/accounts/AccountPreferenceBase;
.source "ManageAccountsSettings.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# instance fields
.field private mAccountType:Ljava/lang/String;

.field private mAuthorities:[Ljava/lang/String;

.field private mErrorInfoView:Landroid/widget/TextView;

.field private mFirstAccount:Landroid/accounts/Account;

.field private mReturnToPrevious:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;-><init>()V

    return-void
.end method

.method private addAuthenticatorSettings()V
    .locals 3

    .prologue
    .line 524
    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/accounts/ManageAccountsSettings;->addPreferencesForType(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 525
    .local v0, prefs:Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 526
    invoke-direct {p0, v0}, Lcom/android/settings/accounts/ManageAccountsSettings;->updatePreferenceIntents(Landroid/preference/PreferenceScreen;)V

    .line 528
    :cond_0
    return-void
.end method

.method private requestOrCancelSyncForAccounts(Z)V
    .locals 11
    .parameter "sync"

    .prologue
    .line 305
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v8

    .line 306
    .local v8, syncAdapters:[Landroid/content/SyncAdapterType;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 307
    .local v2, extras:Landroid/os/Bundle;
    const-string v9, "force"

    const/4 v10, 0x1

    invoke-virtual {v2, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 308
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {v9}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    .line 310
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_6

    .line 311
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    .line 312
    .local v5, pref:Landroid/preference/Preference;
    instance-of v9, v5, Lcom/android/settings/AccountPreference;

    if-eqz v9, :cond_5

    .line 313
    check-cast v5, Lcom/android/settings/AccountPreference;

    .end local v5           #pref:Landroid/preference/Preference;
    invoke-virtual {v5}, Lcom/android/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 315
    .local v0, account:Landroid/accounts/Account;
    const/4 v4, 0x0

    .local v4, j:I
    :goto_1
    array-length v9, v8

    if-ge v4, v9, :cond_2

    .line 316
    aget-object v6, v8, v4

    .line 317
    .local v6, sa:Landroid/content/SyncAdapterType;
    aget-object v9, v8, v4

    iget-object v9, v9, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, v6, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v0, v9}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 319
    if-eqz p1, :cond_1

    .line 320
    iget-object v9, v6, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v0, v9, v2}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 315
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 322
    :cond_1
    iget-object v9, v6, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v0, v9}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    goto :goto_2

    .line 328
    .end local v6           #sa:Landroid/content/SyncAdapterType;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    iget-object v10, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/android/settings/accounts/AccountCommon;->getSSOAccount(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v7

    .line 329
    .local v7, ssoAccount:Landroid/accounts/Account;
    if-eqz v7, :cond_5

    .line 330
    const/4 v4, 0x0

    :goto_3
    array-length v9, v8

    if-ge v4, v9, :cond_5

    .line 331
    aget-object v6, v8, v4

    .line 332
    .restart local v6       #sa:Landroid/content/SyncAdapterType;
    aget-object v9, v8, v4

    iget-object v9, v9, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    iget-object v10, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, v6, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v7, v9}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 334
    if-eqz p1, :cond_4

    .line 335
    iget-object v9, v6, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v7, v9, v2}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 330
    :cond_3
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 337
    :cond_4
    iget-object v9, v6, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v7, v9}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    goto :goto_4

    .line 310
    .end local v0           #account:Landroid/accounts/Account;
    .end local v4           #j:I
    .end local v6           #sa:Landroid/content/SyncAdapterType;
    .end local v7           #ssoAccount:Landroid/accounts/Account;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 345
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 346
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x102000a

    invoke-virtual {v9, v10}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->requestAccessibilityFocus()Z

    .line 347
    return-void
.end method

.method private startAccountSettings(Lcom/android/settings/AccountPreference;)V
    .locals 7
    .parameter

    .prologue
    .line 170
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 171
    const-string v0, "account"

    invoke-virtual {p1}, Lcom/android/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f090967

    invoke-virtual {p1}, Lcom/android/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v4

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v6, 0x1

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 176
    return-void
.end method

.method private updatePreferenceIntents(Landroid/preference/PreferenceScreen;)V
    .locals 6
    .parameter "prefs"

    .prologue
    .line 531
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 532
    .local v2, pm:Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 533
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 534
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 535
    const/high16 v4, 0x1

    invoke-virtual {v2, v1, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 536
    .local v3, ri:Landroid/content/pm/ResolveInfo;
    if-nez v3, :cond_0

    .line 537
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 540
    :cond_0
    const-string v4, "account"

    iget-object v5, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mFirstAccount:Landroid/accounts/Account;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 541
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v4

    const/high16 v5, 0x1000

    or-int/2addr v4, v5

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 544
    .end local v3           #ri:Landroid/content/pm/ResolveInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 545
    goto :goto_0

    .line 546
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    return-void
.end method


# virtual methods
.method public bridge synthetic addPreferencesForType(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-super {p0, p1, p2}, Lcom/android/settings/accounts/AccountPreferenceBase;->addPreferencesForType(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 14
    .parameter "accounts"

    .prologue
    .line 475
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 521
    :goto_0
    return-void

    .line 476
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 477
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mFirstAccount:Landroid/accounts/Account;

    .line 478
    const v1, 0x7f070055

    invoke-virtual {p0, v1}, Lcom/android/settings/accounts/ManageAccountsSettings;->addPreferencesFromResource(I)V

    .line 479
    const/4 v7, 0x0

    .local v7, i:I
    array-length v10, p1

    .local v10, n:I
    :goto_1
    if-ge v7, v10, :cond_5

    .line 480
    aget-object v2, p1, v7

    .line 482
    .local v2, account:Landroid/accounts/Account;
    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 479
    :cond_1
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 483
    :cond_2
    iget-object v1, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/accounts/ManageAccountsSettings;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 485
    .local v4, auths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v13, 0x1

    .line 486
    .local v13, showAccount:Z
    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAuthorities:[Ljava/lang/String;

    if-eqz v1, :cond_3

    if-eqz v4, :cond_3

    .line 487
    const/4 v13, 0x0

    .line 488
    iget-object v6, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAuthorities:[Ljava/lang/String;

    .local v6, arr$:[Ljava/lang/String;
    array-length v9, v6

    .local v9, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_3
    if-ge v8, v9, :cond_3

    aget-object v11, v6, v8

    .line 489
    .local v11, requestedAuthority:Ljava/lang/String;
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 490
    const/4 v13, 0x1

    .line 496
    .end local v6           #arr$:[Ljava/lang/String;
    .end local v8           #i$:I
    .end local v9           #len$:I
    .end local v11           #requestedAuthority:Ljava/lang/String;
    :cond_3
    if-eqz v13, :cond_1

    .line 497
    iget-object v1, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/accounts/ManageAccountsSettings;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 498
    .local v3, icon:Landroid/graphics/drawable/Drawable;
    new-instance v0, Lcom/android/settings/AccountPreference;

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/AccountPreference;-><init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/graphics/drawable/Drawable;Ljava/util/ArrayList;Z)V

    .line 500
    .local v0, preference:Lcom/android/settings/AccountPreference;
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 501
    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mFirstAccount:Landroid/accounts/Account;

    if-nez v1, :cond_1

    .line 502
    iput-object v2, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mFirstAccount:Landroid/accounts/Account;

    .line 503
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_2

    .line 488
    .end local v0           #preference:Lcom/android/settings/AccountPreference;
    .end local v3           #icon:Landroid/graphics/drawable/Drawable;
    .restart local v6       #arr$:[Ljava/lang/String;
    .restart local v8       #i$:I
    .restart local v9       #len$:I
    .restart local v11       #requestedAuthority:Ljava/lang/String;
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 507
    .end local v2           #account:Landroid/accounts/Account;
    .end local v4           #auths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #arr$:[Ljava/lang/String;
    .end local v8           #i$:I
    .end local v9           #len$:I
    .end local v11           #requestedAuthority:Ljava/lang/String;
    .end local v13           #showAccount:Z
    :cond_5
    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mFirstAccount:Landroid/accounts/Account;

    if-eqz v1, :cond_6

    .line 508
    invoke-direct {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->addAuthenticatorSettings()V

    .line 520
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->onSyncStateUpdated()V

    goto :goto_0

    .line 510
    :cond_6
    iget-boolean v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mReturnToPrevious:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    const-string v5, "com.dropbox.android.account"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    const-string v5, "com.osp.app.signin"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 512
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->finish()V

    goto :goto_4

    .line 515
    :cond_8
    new-instance v12, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v12, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 516
    .local v12, settingsTop:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v12, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 517
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_4
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 120
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 123
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getView()Landroid/view/View;

    move-result-object v2

    .line 125
    .local v2, view:Landroid/view/View;
    const v3, 0x7f0b0017

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mErrorInfoView:Landroid/widget/TextView;

    .line 126
    iget-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mErrorInfoView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "authorities"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAuthorities:[Ljava/lang/String;

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 131
    .local v1, args:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    const-string v3, "account_label"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "account_label"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 134
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->updateAuthDescriptions()V

    .line 135
    return-void
.end method

.method protected onAuthDescriptionsUpdated()V
    .locals 4

    .prologue
    .line 551
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 552
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 553
    .local v2, pref:Landroid/preference/Preference;
    instance-of v3, v2, Lcom/android/settings/AccountPreference;

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 554
    check-cast v0, Lcom/android/settings/AccountPreference;

    .line 555
    .local v0, accPref:Lcom/android/settings/AccountPreference;
    invoke-virtual {v0}, Lcom/android/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/settings/accounts/ManageAccountsSettings;->getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/settings/AccountPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 551
    .end local v0           #accPref:Lcom/android/settings/AccountPreference;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 558
    .end local v2           #pref:Landroid/preference/Preference;
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onCreate(Landroid/os/Bundle;)V

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 92
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v1, "account_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    const-string v1, "account_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    .line 95
    :cond_0
    if-eqz v0, :cond_1

    const-string v1, "accountReturnToPrevious"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    const-string v1, "accountReturnToPrevious"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mReturnToPrevious:Z

    .line 98
    :cond_1
    const v1, 0x7f070055

    invoke-virtual {p0, v1}, Lcom/android/settings/accounts/ManageAccountsSettings;->addPreferencesFromResource(I)V

    .line 99
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/accounts/ManageAccountsSettings;->setHasOptionsMenu(Z)V

    .line 100
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 9
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 188
    const v4, 0x7f090c86

    invoke-virtual {p0, v4}, Lcom/android/settings/accounts/ManageAccountsSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v6, v7, v6, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    .line 189
    .local v3, syncNow:Landroid/view/MenuItem;
    const/4 v4, 0x2

    const v5, 0x7f090c88

    invoke-virtual {p0, v5}, Lcom/android/settings/accounts/ManageAccountsSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    .line 191
    .local v2, syncCancel:Landroid/view/MenuItem;
    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 192
    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 194
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v4

    if-ne v4, v7, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/accounts/AccountCommon;->isActionbarLightTheme(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 198
    const v1, 0x7f020233

    .line 199
    .local v1, refreshResId:I
    const v0, 0x7f02022b

    .line 205
    .local v0, cancelResId:I
    :goto_0
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 206
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 210
    .end local v0           #cancelResId:I
    .end local v1           #refreshResId:I
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/accounts/AccountPreferenceBase;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 211
    return-void

    .line 201
    :cond_1
    const v1, 0x7f020234

    .line 202
    .restart local v1       #refreshResId:I
    const v0, 0x7f02022c

    .restart local v0       #cancelResId:I
    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 112
    const v2, 0x7f0400d5

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 113
    .local v1, view:Landroid/view/View;
    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 114
    .local v0, list:Landroid/widget/ListView;
    invoke-static {p2, v1, v0, v3}, Lcom/android/settings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 115
    return-object v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 293
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 301
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 295
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/android/settings/accounts/ManageAccountsSettings;->requestOrCancelSyncForAccounts(Z)V

    goto :goto_0

    .line 298
    :pswitch_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings/accounts/ManageAccountsSettings;->requestOrCancelSyncForAccounts(Z)V

    goto :goto_0

    .line 293
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic onPause()V
    .locals 0

    .prologue
    .line 59
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onPause()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferences"
    .parameter "preference"

    .prologue
    const/4 v2, 0x1

    .line 148
    instance-of v3, p2, Lcom/android/settings/AccountPreference;

    if-eqz v3, :cond_1

    .line 150
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Common_MyPhonebookBrandName"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v0, p2

    .line 151
    check-cast v0, Lcom/android/settings/AccountPreference;

    .line 152
    .local v0, pref:Lcom/android/settings/AccountPreference;
    invoke-virtual {v0}, Lcom/android/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v4, "com.android.tmo_myphonebook"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 153
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 154
    .local v1, syncmlDsIntent:Landroid/content/Intent;
    const-string v3, "android.intent.action.MYPHONEBOOK_SELECTED"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 156
    const-string v3, "AccountSettings"

    const-string v4, "android.intent.action.MYPHONEBOOK_SELECTED"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .end local v0           #pref:Lcom/android/settings/AccountPreference;
    .end local v1           #syncmlDsIntent:Landroid/content/Intent;
    .end local p2
    :goto_0
    return v2

    .line 162
    .restart local p2
    :cond_0
    check-cast p2, Lcom/android/settings/AccountPreference;

    .end local p2
    invoke-direct {p0, p2}, Lcom/android/settings/accounts/ManageAccountsSettings;->startAccountSettings(Lcom/android/settings/AccountPreference;)V

    goto :goto_0

    .line 164
    .restart local p2
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 14
    .parameter "menu"

    .prologue
    .line 215
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 222
    const/4 v12, 0x1

    invoke-interface {p1, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    .line 223
    .local v11, syncNow:Landroid/view/MenuItem;
    const/4 v12, 0x2

    invoke-interface {p1, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    .line 225
    .local v10, syncCancel:Landroid/view/MenuItem;
    if-eqz v11, :cond_c

    if-eqz v10, :cond_c

    .line 226
    const/4 v2, 0x0

    .line 227
    .local v2, isSyncableAccount:Z
    const/4 v1, 0x0

    .line 228
    .local v1, isSyncEnabled:Z
    const/4 v3, 0x0

    .line 230
    .local v3, isSyncing:Z
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v9

    .line 231
    .local v9, syncAdapters:[Landroid/content/SyncAdapterType;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    invoke-virtual {v12}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v12

    if-ge v0, v12, :cond_a

    .line 232
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v6

    .line 233
    .local v6, pref:Landroid/preference/Preference;
    instance-of v12, v6, Lcom/android/settings/AccountPreference;

    if-nez v12, :cond_1

    .line 231
    .end local v6           #pref:Landroid/preference/Preference;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 237
    .restart local v6       #pref:Landroid/preference/Preference;
    :cond_1
    check-cast v6, Lcom/android/settings/AccountPreference;

    .end local v6           #pref:Landroid/preference/Preference;
    invoke-virtual {v6}, Lcom/android/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v5

    .line 238
    .local v5, originalAccount:Landroid/accounts/Account;
    const/4 v4, 0x0

    .local v4, j:I
    :goto_1
    array-length v12, v9

    if-ge v4, v12, :cond_0

    .line 239
    aget-object v7, v9, v4

    .line 240
    .local v7, sa:Landroid/content/SyncAdapterType;
    iget-object v12, v7, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    iget-object v13, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-virtual {v7}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v12

    if-eqz v12, :cond_4

    iget-object v12, v7, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v5, v12}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v12

    if-lez v12, :cond_4

    .line 241
    const/4 v2, 0x1

    .line 242
    iget-object v12, v7, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v5, v12}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 243
    const/4 v1, 0x1

    .line 245
    :cond_2
    iget-object v12, v7, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v5, v12}, Landroid/content/ContentResolver;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_3

    iget-object v12, v7, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v5, v12}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 247
    :cond_3
    const/4 v3, 0x1

    .line 250
    :cond_4
    const-string v12, "CHM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    const-string v12, "CHC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    :cond_5
    const-string v12, "com.osp.app.signin"

    iget-object v13, v7, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 252
    const/4 v1, 0x0

    .line 255
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    iget-object v13, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v12, v13}, Lcom/android/settings/accounts/AccountCommon;->getSSOAccount(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v8

    .line 256
    .local v8, ssoAccount:Landroid/accounts/Account;
    if-eqz v8, :cond_9

    .line 257
    iget-object v12, v7, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    iget-object v13, v8, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-virtual {v7}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v12

    if-eqz v12, :cond_9

    iget-object v12, v7, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v8, v12}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v12

    if-lez v12, :cond_9

    .line 258
    const/4 v2, 0x1

    .line 259
    iget-object v12, v7, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v8, v12}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 260
    const/4 v1, 0x1

    .line 262
    :cond_7
    iget-object v12, v7, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v8, v12}, Landroid/content/ContentResolver;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_8

    iget-object v12, v7, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v8, v12}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 264
    :cond_8
    const/4 v3, 0x1

    .line 238
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 271
    .end local v4           #j:I
    .end local v5           #originalAccount:Landroid/accounts/Account;
    .end local v7           #sa:Landroid/content/SyncAdapterType;
    .end local v8           #ssoAccount:Landroid/accounts/Account;
    :cond_a
    if-eqz v2, :cond_b

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v12

    if-eqz v12, :cond_d

    if-nez v1, :cond_d

    .line 273
    :cond_b
    const/4 v12, 0x1

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 274
    const/4 v12, 0x0

    invoke-interface {v10, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 275
    const/4 v12, 0x0

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 276
    invoke-interface {v11}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-eqz v12, :cond_c

    .line 277
    invoke-interface {v11}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    const/16 v13, 0x66

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 289
    .end local v0           #i:I
    .end local v1           #isSyncEnabled:Z
    .end local v2           #isSyncableAccount:Z
    .end local v3           #isSyncing:Z
    .end local v9           #syncAdapters:[Landroid/content/SyncAdapterType;
    :cond_c
    :goto_2
    return-void

    .line 280
    .restart local v0       #i:I
    .restart local v1       #isSyncEnabled:Z
    .restart local v2       #isSyncableAccount:Z
    .restart local v3       #isSyncing:Z
    .restart local v9       #syncAdapters:[Landroid/content/SyncAdapterType;
    :cond_d
    if-nez v3, :cond_e

    const/4 v12, 0x1

    :goto_3
    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 281
    invoke-interface {v10, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 282
    const/4 v12, 0x1

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 283
    invoke-interface {v11}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-eqz v12, :cond_c

    .line 284
    invoke-interface {v11}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    const/16 v13, 0xff

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_2

    .line 280
    :cond_e
    const/4 v12, 0x0

    goto :goto_3
.end method

.method public bridge synthetic onResume()V
    .locals 0

    .prologue
    .line 59
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 104
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onStart()V

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 106
    .local v0, activity:Landroid/app/Activity;
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, p0, v2, v3}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 107
    return-void
.end method

.method public onStop()V
    .locals 4

    .prologue
    .line 139
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onStop()V

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 141
    .local v0, activity:Landroid/app/Activity;
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 142
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 143
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 144
    return-void
.end method

.method protected onSyncStateUpdated()V
    .locals 35

    .prologue
    .line 352
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v31

    if-nez v31, :cond_0

    .line 471
    :goto_0
    return-void

    .line 355
    :cond_0
    invoke-static {}, Landroid/content/ContentResolver;->getCurrentSync()Landroid/content/SyncInfo;

    move-result-object v10

    .line 357
    .local v10, currentSync:Landroid/content/SyncInfo;
    const/4 v5, 0x0

    .line 358
    .local v5, anySyncFailed:Z
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    .line 361
    .local v11, date:Ljava/util/Date;
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v24

    .line 362
    .local v24, syncAdapters:[Landroid/content/SyncAdapterType;
    new-instance v30, Ljava/util/HashSet;

    invoke-direct/range {v30 .. v30}, Ljava/util/HashSet;-><init>()V

    .line 363
    .local v30, userFacing:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v15, 0x0

    .local v15, k:I
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v19, v0

    .local v19, n:I
    :goto_1
    move/from16 v0, v19

    if-ge v15, v0, :cond_2

    .line 364
    aget-object v21, v24, v15

    .line 365
    .local v21, sa:Landroid/content/SyncAdapterType;
    invoke-virtual/range {v21 .. v21}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v31

    if-eqz v31, :cond_1

    .line 366
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 363
    :cond_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 369
    .end local v21           #sa:Landroid/content/SyncAdapterType;
    :cond_2
    const/4 v12, 0x0

    .local v12, i:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v9

    .local v9, count:I
    :goto_2
    if-ge v12, v9, :cond_19

    .line 370
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v20

    .line 371
    .local v20, pref:Landroid/preference/Preference;
    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/android/settings/AccountPreference;

    move/from16 v31, v0

    if-nez v31, :cond_4

    .line 369
    :cond_3
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_4
    move-object/from16 v3, v20

    .line 375
    check-cast v3, Lcom/android/settings/AccountPreference;

    .line 376
    .local v3, accountPref:Lcom/android/settings/AccountPreference;
    invoke-virtual {v3}, Lcom/android/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    .line 377
    .local v2, account:Landroid/accounts/Account;
    const/16 v25, 0x0

    .line 378
    .local v25, syncCount:I
    const-wide/16 v16, 0x0

    .line 379
    .local v16, lastSuccessTime:J
    const/16 v27, 0x0

    .line 380
    .local v27, syncIsFailing:Z
    invoke-virtual {v3}, Lcom/android/settings/AccountPreference;->getAuthorities()Ljava/util/ArrayList;

    move-result-object v6

    .line 381
    .local v6, authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v28, 0x0

    .line 382
    .local v28, syncingNow:Z
    if-eqz v6, :cond_b

    .line 383
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 384
    .local v7, authority:Ljava/lang/String;
    invoke-static {v2, v7}, Landroid/content/ContentResolver;->getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncStatusInfo;

    move-result-object v23

    .line 385
    .local v23, status:Landroid/content/SyncStatusInfo;
    invoke-static {v2, v7}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_7

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v31

    if-eqz v31, :cond_7

    invoke-static {v2, v7}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v31

    if-lez v31, :cond_7

    const/16 v26, 0x1

    .line 388
    .local v26, syncEnabled:Z
    :goto_5
    invoke-static {v2, v7}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v8

    .line 389
    .local v8, authorityIsPending:Z
    if-eqz v10, :cond_8

    iget-object v0, v10, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_8

    new-instance v31, Landroid/accounts/Account;

    iget-object v0, v10, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v32, v0

    iget-object v0, v10, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-direct/range {v31 .. v33}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_8

    const/4 v4, 0x1

    .line 393
    .local v4, activelySyncing:Z
    :goto_6
    if-eqz v23, :cond_9

    if-eqz v26, :cond_9

    move-object/from16 v0, v23

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    move-wide/from16 v31, v0

    const-wide/16 v33, 0x0

    cmp-long v31, v31, v33

    if-eqz v31, :cond_9

    const/16 v31, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/SyncStatusInfo;->getLastFailureMesgAsInt(I)I

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_9

    const/16 v18, 0x1

    .line 398
    .local v18, lastSyncFailed:Z
    :goto_7
    if-eqz v18, :cond_5

    if-nez v4, :cond_5

    if-nez v8, :cond_5

    .line 399
    const/16 v27, 0x1

    .line 400
    const/4 v5, 0x1

    .line 402
    :cond_5
    or-int v28, v28, v4

    .line 403
    if-eqz v23, :cond_6

    move-object/from16 v0, v23

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    move-wide/from16 v31, v0

    cmp-long v31, v16, v31

    if-gez v31, :cond_6

    .line 404
    move-object/from16 v0, v23

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    move-wide/from16 v16, v0

    .line 406
    :cond_6
    if-eqz v26, :cond_a

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_a

    const/16 v31, 0x1

    :goto_8
    add-int v25, v25, v31

    .line 407
    goto/16 :goto_4

    .line 385
    .end local v4           #activelySyncing:Z
    .end local v8           #authorityIsPending:Z
    .end local v18           #lastSyncFailed:Z
    .end local v26           #syncEnabled:Z
    :cond_7
    const/16 v26, 0x0

    goto/16 :goto_5

    .line 389
    .restart local v8       #authorityIsPending:Z
    .restart local v26       #syncEnabled:Z
    :cond_8
    const/4 v4, 0x0

    goto :goto_6

    .line 393
    .restart local v4       #activelySyncing:Z
    :cond_9
    const/16 v18, 0x0

    goto :goto_7

    .line 406
    .restart local v18       #lastSyncFailed:Z
    :cond_a
    const/16 v31, 0x0

    goto :goto_8

    .line 409
    .end local v4           #activelySyncing:Z
    .end local v7           #authority:Ljava/lang/String;
    .end local v8           #authorityIsPending:Z
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v18           #lastSyncFailed:Z
    .end local v23           #status:Landroid/content/SyncStatusInfo;
    .end local v26           #syncEnabled:Z
    :cond_b
    const-string v31, "AccountSettings"

    const/16 v32, 0x2

    invoke-static/range {v31 .. v32}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v31

    if-eqz v31, :cond_c

    .line 410
    const-string v31, "AccountSettings"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "no syncadapters found for "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v31

    iget-object v0, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-static/range {v31 .. v32}, Lcom/android/settings/accounts/AccountCommon;->getSSOAccount(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v22

    .line 416
    .local v22, ssoAccount:Landroid/accounts/Account;
    if-eqz v22, :cond_14

    .line 417
    const/4 v14, 0x0

    .local v14, j:I
    :goto_9
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    if-ge v14, v0, :cond_14

    .line 418
    aget-object v21, v24, v14

    .line 419
    .restart local v21       #sa:Landroid/content/SyncAdapterType;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_f

    .line 420
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncStatusInfo;

    move-result-object v23

    .line 421
    .restart local v23       #status:Landroid/content/SyncStatusInfo;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_10

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v31

    if-eqz v31, :cond_10

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v31

    if-lez v31, :cond_10

    const/16 v26, 0x1

    .line 424
    .restart local v26       #syncEnabled:Z
    :goto_a
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v8

    .line 425
    .restart local v8       #authorityIsPending:Z
    if-eqz v10, :cond_11

    iget-object v0, v10, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_11

    new-instance v31, Landroid/accounts/Account;

    iget-object v0, v10, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v32, v0

    iget-object v0, v10, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-direct/range {v31 .. v33}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_11

    const/4 v4, 0x1

    .line 429
    .restart local v4       #activelySyncing:Z
    :goto_b
    if-eqz v23, :cond_12

    if-eqz v26, :cond_12

    move-object/from16 v0, v23

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    move-wide/from16 v31, v0

    const-wide/16 v33, 0x0

    cmp-long v31, v31, v33

    if-eqz v31, :cond_12

    const/16 v31, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/SyncStatusInfo;->getLastFailureMesgAsInt(I)I

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_12

    const/16 v18, 0x1

    .line 434
    .restart local v18       #lastSyncFailed:Z
    :goto_c
    if-eqz v18, :cond_d

    if-nez v4, :cond_d

    if-nez v8, :cond_d

    .line 435
    const/16 v27, 0x1

    .line 436
    const/4 v5, 0x1

    .line 438
    :cond_d
    or-int v28, v28, v4

    .line 439
    if-eqz v23, :cond_e

    move-object/from16 v0, v23

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    move-wide/from16 v31, v0

    cmp-long v31, v16, v31

    if-gez v31, :cond_e

    .line 440
    move-object/from16 v0, v23

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    move-wide/from16 v16, v0

    .line 442
    :cond_e
    if-eqz v26, :cond_13

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_13

    const/16 v31, 0x1

    :goto_d
    add-int v25, v25, v31

    .line 417
    .end local v4           #activelySyncing:Z
    .end local v8           #authorityIsPending:Z
    .end local v18           #lastSyncFailed:Z
    .end local v23           #status:Landroid/content/SyncStatusInfo;
    .end local v26           #syncEnabled:Z
    :cond_f
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_9

    .line 421
    .restart local v23       #status:Landroid/content/SyncStatusInfo;
    :cond_10
    const/16 v26, 0x0

    goto/16 :goto_a

    .line 425
    .restart local v8       #authorityIsPending:Z
    .restart local v26       #syncEnabled:Z
    :cond_11
    const/4 v4, 0x0

    goto :goto_b

    .line 429
    .restart local v4       #activelySyncing:Z
    :cond_12
    const/16 v18, 0x0

    goto :goto_c

    .line 442
    .restart local v18       #lastSyncFailed:Z
    :cond_13
    const/16 v31, 0x0

    goto :goto_d

    .line 447
    .end local v4           #activelySyncing:Z
    .end local v8           #authorityIsPending:Z
    .end local v14           #j:I
    .end local v18           #lastSyncFailed:Z
    .end local v21           #sa:Landroid/content/SyncAdapterType;
    .end local v23           #status:Landroid/content/SyncStatusInfo;
    .end local v26           #syncEnabled:Z
    :cond_14
    if-eqz v27, :cond_15

    .line 448
    const/16 v31, 0x2

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v3, v0, v1}, Lcom/android/settings/AccountPreference;->setSyncStatus(IZ)V

    goto/16 :goto_3

    .line 449
    :cond_15
    if-nez v25, :cond_16

    .line 450
    const/16 v31, 0x1

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v3, v0, v1}, Lcom/android/settings/AccountPreference;->setSyncStatus(IZ)V

    goto/16 :goto_3

    .line 451
    :cond_16
    if-lez v25, :cond_18

    .line 452
    if-eqz v28, :cond_17

    .line 453
    const/16 v31, 0x3

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v3, v0, v1}, Lcom/android/settings/AccountPreference;->setSyncStatus(IZ)V

    goto/16 :goto_3

    .line 455
    :cond_17
    const/16 v31, 0x0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v3, v0, v1}, Lcom/android/settings/AccountPreference;->setSyncStatus(IZ)V

    .line 456
    const-wide/16 v31, 0x0

    cmp-long v31, v16, v31

    if-lez v31, :cond_3

    .line 457
    const/16 v31, 0x0

    const/16 v32, 0x0

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v3, v0, v1}, Lcom/android/settings/AccountPreference;->setSyncStatus(IZ)V

    .line 458
    move-wide/from16 v0, v16

    invoke-virtual {v11, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 459
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/settings/accounts/ManageAccountsSettings;->formatSyncDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v29

    .line 460
    .local v29, timeString:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f090972

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    aput-object v29, v33, v34

    invoke-virtual/range {v31 .. v33}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Lcom/android/settings/AccountPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 465
    .end local v29           #timeString:Ljava/lang/String;
    :cond_18
    const/16 v31, 0x1

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v3, v0, v1}, Lcom/android/settings/AccountPreference;->setSyncStatus(IZ)V

    goto/16 :goto_3

    .line 469
    .end local v2           #account:Landroid/accounts/Account;
    .end local v3           #accountPref:Lcom/android/settings/AccountPreference;
    .end local v6           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v16           #lastSuccessTime:J
    .end local v20           #pref:Landroid/preference/Preference;
    .end local v22           #ssoAccount:Landroid/accounts/Account;
    .end local v25           #syncCount:I
    .end local v27           #syncIsFailing:Z
    .end local v28           #syncingNow:Z
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mErrorInfoView:Landroid/widget/TextView;

    move-object/from16 v32, v0

    if-eqz v5, :cond_1a

    const/16 v31, 0x0

    :goto_e
    move-object/from16 v0, v32

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 470
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto/16 :goto_0

    .line 469
    :cond_1a
    const/16 v31, 0x8

    goto :goto_e
.end method

.method public bridge synthetic updateAuthDescriptions()V
    .locals 0

    .prologue
    .line 59
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->updateAuthDescriptions()V

    return-void
.end method

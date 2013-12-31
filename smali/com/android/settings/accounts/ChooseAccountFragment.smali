.class public Lcom/android/settings/accounts/ChooseAccountFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ChooseAccountFragment.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;
    }
.end annotation


# instance fields
.field private mAccountTypeToAuthorities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public mAccountTypesFilter:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAddAccountGroup:Landroid/preference/PreferenceGroup;

.field private mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

.field private mAuthorities:[Ljava/lang/String;

.field private mCallback:Landroid/accounts/AccountManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mIsMultipaneFragment:Z

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private final mProviderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mTypeToAuthDescription:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/accounts/AuthenticatorDescription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mProviderList:Ljava/util/ArrayList;

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mTypeToAuthDescription:Ljava/util/Map;

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mIsMultipaneFragment:Z

    .line 112
    new-instance v0, Lcom/android/settings/accounts/ChooseAccountFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accounts/ChooseAccountFragment$1;-><init>(Lcom/android/settings/accounts/ChooseAccountFragment;)V

    iput-object v0, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mCallback:Landroid/accounts/AccountManagerCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accounts/ChooseAccountFragment;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/accounts/ChooseAccountFragment;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mPendingIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/accounts/ChooseAccountFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mIsMultipaneFragment:Z

    return v0
.end method

.method private addAccount(Ljava/lang/String;)V
    .locals 8
    .parameter "accountType"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 458
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 459
    .local v4, addAccountOptions:Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static {v0, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mPendingIntent:Landroid/app/PendingIntent;

    .line 460
    const-string v0, "pendingIntent"

    iget-object v1, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 461
    const-string v0, "hasMultipleUsers"

    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->hasMultipleUsers(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 464
    sget-object v0, Lcom/android/settings/accounts/AccountCommon;->facebookSSOAccountType:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/accounts/AccountCommon;->facebookSSOAccountType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    const-string p1, "com.sec.android.app.sns3.facebook"

    .line 469
    :cond_0
    sget-object v0, Lcom/android/settings/accounts/AccountCommon;->twitterSSOAccountType:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/accounts/AccountCommon;->twitterSSOAccountType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 470
    const-string p1, "com.sec.android.app.sns3.twitter"

    .line 473
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v6, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mCallback:Landroid/accounts/AccountManagerCallback;

    move-object v1, p1

    move-object v3, v2

    move-object v5, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 482
    return-void
.end method

.method private finishWithAccountType(Ljava/lang/String;)V
    .locals 0
    .parameter "accountType"

    .prologue
    .line 454
    invoke-direct {p0, p1}, Lcom/android/settings/accounts/ChooseAccountFragment;->addAccount(Ljava/lang/String;)V

    .line 455
    return-void
.end method

.method private onAuthDescriptionsUpdated()V
    .locals 21

    .prologue
    .line 246
    const/4 v15, 0x0

    .line 247
    .local v15, isShownFacebook:Z
    const/16 v16, 0x0

    .line 250
    .local v16, isShownTwitter:Z
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    array-length v2, v2

    if-ge v13, v2, :cond_11

    .line 251
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    aget-object v2, v2, v13

    iget-object v9, v2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    .line 252
    .local v9, accountType:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/settings/accounts/ChooseAccountFragment;->getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v20

    .line 256
    .local v20, providerName:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/settings/accounts/ChooseAccountFragment;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 257
    .local v8, accountAuths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x1

    .line 258
    .local v10, addAccountPref:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAuthorities:[Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAuthorities:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_0

    .line 259
    const/4 v10, 0x0

    .line 260
    const/16 v17, 0x0

    .local v17, k:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAuthorities:[Ljava/lang/String;

    array-length v2, v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_0

    .line 261
    if-eqz v8, :cond_f

    .line 262
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAuthorities:[Ljava/lang/String;

    aget-object v2, v2, v17

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 263
    const/4 v10, 0x1

    .line 269
    .end local v17           #k:I
    :cond_0
    if-eqz v10, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAccountTypesFilter:Ljava/util/HashSet;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAccountTypesFilter:Ljava/util/HashSet;

    invoke-virtual {v2, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 271
    const/4 v10, 0x0

    .line 275
    :cond_1
    sget-object v2, Lcom/android/settings/accounts/AccountCommon;->facebookSSOAccountType:Ljava/lang/String;

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    if-ne v10, v2, :cond_4

    .line 276
    sget-object v2, Lcom/android/settings/accounts/AccountCommon;->facebookSSOAccountType:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.sec.android.app.sns3.facebook"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 277
    :cond_2
    const/4 v2, 0x1

    if-ne v15, v2, :cond_3

    .line 278
    const/4 v10, 0x0

    .line 281
    :cond_3
    const/4 v15, 0x1

    .line 282
    sget-object v20, Lcom/android/settings/accounts/AccountCommon;->facebookSSOAccountLabel:Ljava/lang/String;

    .line 287
    :cond_4
    sget-object v2, Lcom/android/settings/accounts/AccountCommon;->twitterSSOAccountType:Ljava/lang/String;

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    if-ne v10, v2, :cond_7

    .line 288
    sget-object v2, Lcom/android/settings/accounts/AccountCommon;->twitterSSOAccountType:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "com.sec.android.app.sns3.twitter"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 289
    :cond_5
    const/4 v2, 0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_6

    .line 290
    const/4 v10, 0x0

    .line 293
    :cond_6
    const/16 v16, 0x1

    .line 294
    sget-object v20, Lcom/android/settings/accounts/AccountCommon;->twitterSSOAccountLabel:Ljava/lang/String;

    .line 300
    :cond_7
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "com.smlds.accountType"

    invoke-virtual {v9, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_8

    .line 302
    const/4 v10, 0x0

    .line 305
    :cond_8
    const-string v2, "CHM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "CHC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_9
    const-string v2, "com.osp.app.signin"

    invoke-virtual {v9, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_b

    .line 306
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAuthorities:[Ljava/lang/String;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAuthorities:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const-string v3, "com.android.contacts"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAuthorities:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const-string v3, "com.android.calendar"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 308
    :cond_a
    const/4 v10, 0x0

    .line 313
    :cond_b
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Common_MyPhonebookBrandName"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    .line 314
    const-string v2, "com.smlds.accountType"

    invoke-virtual {v9, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "com.android.tmo_myphonebook"

    invoke-virtual {v9, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_d

    .line 315
    :cond_c
    const/4 v10, 0x0

    .line 319
    :cond_d
    if-eqz v10, :cond_10

    .line 320
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/accounts/ChooseAccountFragment;->mProviderList:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;

    move-object/from16 v0, v20

    invoke-direct {v3, v0, v9}, Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    :cond_e
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 260
    .restart local v17       #k:I
    :cond_f
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_1

    .line 322
    .end local v17           #k:I
    :cond_10
    const-string v2, "ChooseAccountFragment"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 323
    const-string v2, "ChooseAccountFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipped pref "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ": has no authority we need"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 328
    .end local v8           #accountAuths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9           #accountType:Ljava/lang/String;
    .end local v10           #addAccountPref:Z
    .end local v20           #providerName:Ljava/lang/CharSequence;
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/accounts/ChooseAccountFragment;->mProviderList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_13

    .line 330
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/accounts/ChooseAccountFragment;->mProviderList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;

    #getter for: Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;->type:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;->access$200(Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/accounts/ChooseAccountFragment;->finishWithAccountType(Ljava/lang/String;)V

    .line 356
    :cond_12
    :goto_3
    return-void

    .line 331
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/accounts/ChooseAccountFragment;->mProviderList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_14

    .line 332
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/accounts/ChooseAccountFragment;->mProviderList:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 333
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAddAccountGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 334
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/accounts/ChooseAccountFragment;->mProviderList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;

    .line 335
    .local v19, pref:Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;
    #getter for: Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;->type:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;->access$200(Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/accounts/ChooseAccountFragment;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 336
    .local v4, drawable:Landroid/graphics/drawable/Drawable;
    new-instance v1, Lcom/android/settings/accounts/ProviderPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ChooseAccountFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    #getter for: Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;->type:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;->access$200(Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;)Ljava/lang/String;

    move-result-object v3

    #getter for: Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;->name:Ljava/lang/CharSequence;
    invoke-static/range {v19 .. v19}, Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;->access$300(Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;)Ljava/lang/CharSequence;

    move-result-object v5

    #getter for: Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;->type:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;->access$200(Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/settings/accounts/ChooseAccountFragment;->isSignedIn(Ljava/lang/String;)Z

    move-result v6

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/accounts/ProviderPreference;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Z)V

    .line 338
    .local v1, p:Lcom/android/settings/accounts/ProviderPreference;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAddAccountGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_4

    .line 341
    .end local v1           #p:Lcom/android/settings/accounts/ProviderPreference;
    .end local v4           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v19           #pref:Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;
    :cond_14
    const-string v2, "ChooseAccountFragment"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 342
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 343
    .local v12, auths:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAuthorities:[Ljava/lang/String;

    if-eqz v2, :cond_15

    .line 344
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAuthorities:[Ljava/lang/String;

    .local v11, arr$:[Ljava/lang/String;
    array-length v0, v11

    move/from16 v18, v0

    .local v18, len$:I
    const/4 v14, 0x0

    .local v14, i$:I
    :goto_5
    move/from16 v0, v18

    if-ge v14, v0, :cond_15

    aget-object v7, v11, v14

    .line 345
    .local v7, a:Ljava/lang/String;
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    const/16 v2, 0x20

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 344
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 349
    .end local v7           #a:Ljava/lang/String;
    .end local v11           #arr$:[Ljava/lang/String;
    .end local v14           #i$:I
    .end local v18           #len$:I
    :cond_15
    const-string v2, "ChooseAccountFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No providers found for authorities: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    .end local v12           #auths:Ljava/lang/StringBuilder;
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/accounts/ChooseAccountFragment;->mIsMultipaneFragment:Z

    if-nez v2, :cond_12

    .line 352
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ChooseAccountFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setResult(I)V

    .line 353
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ChooseAccountFragment;->finish()V

    goto/16 :goto_3
.end method

.method private updateAuthDescriptions()V
    .locals 4

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    .line 239
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 240
    iget-object v1, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mTypeToAuthDescription:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    aget-object v2, v2, v0

    iget-object v2, v2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    aget-object v3, v3, v0

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 242
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/accounts/ChooseAccountFragment;->onAuthDescriptionsUpdated()V

    .line 243
    return-void
.end method


# virtual methods
.method public getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 359
    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    if-nez v5, :cond_2

    .line 360
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    .line 361
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v4

    .line 362
    .local v4, syncAdapters:[Landroid/content/SyncAdapterType;
    const/4 v1, 0x0

    .local v1, i:I
    array-length v2, v4

    .local v2, n:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 363
    aget-object v3, v4, v1

    .line 364
    .local v3, sa:Landroid/content/SyncAdapterType;
    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    iget-object v6, v3, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 365
    .local v0, authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 366
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 367
    .restart local v0       #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    iget-object v6, v3, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    :cond_0
    const-string v5, "ChooseAccountFragment"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 370
    const-string v5, "ChooseAccountFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "added authority "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to accountType "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_1
    iget-object v5, v3, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 376
    .end local v0           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1           #i:I
    .end local v2           #n:I
    .end local v3           #sa:Landroid/content/SyncAdapterType;
    .end local v4           #syncAdapters:[Landroid/content/SyncAdapterType;
    :cond_2
    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    return-object v5
.end method

.method protected getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "accountType"

    .prologue
    .line 398
    const/4 v3, 0x0

    .line 399
    .local v3, icon:Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 401
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AuthenticatorDescription;

    .line 402
    .local v1, desc:Landroid/accounts/AuthenticatorDescription;
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 403
    .local v0, authContext:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, v1, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 412
    .end local v0           #authContext:Landroid/content/Context;
    .end local v1           #desc:Landroid/accounts/AuthenticatorDescription;
    :cond_0
    :goto_0
    return-object v3

    .line 404
    :catch_0
    move-exception v2

    .line 406
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "ChooseAccountFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No icon name for account type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 407
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v2

    .line 409
    .local v2, e:Landroid/content/res/Resources$NotFoundException;
    const-string v4, "ChooseAccountFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No icon resource for account type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 7
    .parameter "accountType"

    .prologue
    .line 421
    const/4 v3, 0x0

    .line 422
    .local v3, label:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 424
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AuthenticatorDescription;

    .line 425
    .local v1, desc:Landroid/accounts/AuthenticatorDescription;
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 426
    .local v0, authContext:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, v1, Landroid/accounts/AuthenticatorDescription;->labelId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 433
    .end local v0           #authContext:Landroid/content/Context;
    .end local v1           #desc:Landroid/accounts/AuthenticatorDescription;
    :cond_0
    :goto_0
    return-object v3

    .line 427
    :catch_0
    move-exception v2

    .line 428
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "ChooseAccountFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No label name for account type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 429
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v2

    .line 430
    .local v2, e:Landroid/content/res/Resources$NotFoundException;
    const-string v4, "ChooseAccountFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No label resource for account type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected isSignedIn(Ljava/lang/String;)Z
    .locals 3
    .parameter "type"

    .prologue
    .line 381
    const/4 v1, 0x0

    .line 382
    .local v1, isSignedIn:Z
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 383
    .local v0, accountManager:Landroid/accounts/AccountManager;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 384
    invoke-virtual {v0, p1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_0

    .line 385
    const/4 v1, 0x1

    .line 388
    :cond_0
    return v1
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 2
    .parameter "accounts"

    .prologue
    .line 486
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mPendingIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 491
    :cond_0
    :goto_0
    return-void

    .line 488
    :cond_1
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mProviderList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mProviderList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 489
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAddAccountGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 490
    invoke-direct {p0}, Lcom/android/settings/accounts/ChooseAccountFragment;->updateAuthDescriptions()V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    .line 189
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 192
    .local v2, activity:Landroid/app/Activity;
    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "authorities"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAuthorities:[Ljava/lang/String;

    .line 194
    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "account_types"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 196
    .local v1, accountTypesFilter:[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 197
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    iput-object v6, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAccountTypesFilter:Ljava/util/HashSet;

    .line 198
    move-object v3, v1

    .local v3, arr$:[Ljava/lang/String;
    array-length v5, v3

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, v3, v4

    .line 199
    .local v0, accountType:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAccountTypesFilter:Ljava/util/HashSet;

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 198
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 202
    .end local v0           #accountType:Ljava/lang/String;
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAddAccountGroup:Landroid/preference/PreferenceGroup;

    .line 203
    invoke-direct {p0}, Lcom/android/settings/accounts/ChooseAccountFragment;->updateAuthDescriptions()V

    .line 206
    invoke-static {v2}, Lcom/android/settings/accounts/AccountCommon;->checkAccountSSO(Landroid/content/Context;)V

    .line 207
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 218
    packed-switch p1, :pswitch_data_0

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 221
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    .line 223
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mPendingIntent:Landroid/app/PendingIntent;

    .line 225
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mIsMultipaneFragment:Z

    if-nez v0, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 227
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountFragment;->finish()V

    goto :goto_0

    .line 218
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 167
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 170
    const v0, 0x7f070009

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/ChooseAccountFragment;->addPreferencesFromResource(I)V

    .line 178
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferences"
    .parameter "preference"

    .prologue
    .line 438
    instance-of v1, p2, Lcom/android/settings/accounts/ProviderPreference;

    if-eqz v1, :cond_1

    move-object v0, p2

    .line 439
    check-cast v0, Lcom/android/settings/accounts/ProviderPreference;

    .line 440
    .local v0, pref:Lcom/android/settings/accounts/ProviderPreference;
    const-string v1, "ChooseAccountFragment"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 441
    const-string v1, "ChooseAccountFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempting to add account of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/settings/accounts/ProviderPreference;->getAccountType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/accounts/ProviderPreference;->getAccountType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/accounts/ChooseAccountFragment;->finishWithAccountType(Ljava/lang/String;)V

    .line 446
    .end local v0           #pref:Lcom/android/settings/accounts/ProviderPreference;
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 182
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 184
    .local v0, activity:Landroid/app/Activity;
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, p0, v2, v3}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 185
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 211
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 212
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 213
    .local v0, activity:Landroid/app/Activity;
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 214
    return-void
.end method

.class public Lcom/android/settings/accounts/AccountReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AccountReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private sendBCSResponse(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "i"

    .prologue
    .line 89
    const-string v1, "AccountReceiver"

    const-string v2, "sendBCSResponse()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.BCS_RESPONSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 91
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "response"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 93
    return-void
.end method

.method private native setRequiredAuthFlagOff()I
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 36
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, action:Ljava/lang/String;
    const-string v7, "AccountReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "receive intent action is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const-string v7, "android.intent.action.BCS_REQUEST"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 43
    .local v3, data:Landroid/os/Bundle;
    if-nez v3, :cond_1

    .line 44
    const-string v7, "AccountReceiver"

    const-string v8, "there is no extras"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .end local v3           #data:Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 48
    .restart local v3       #data:Landroid/os/Bundle;
    :cond_1
    const-string v7, "command"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, command:Ljava/lang/String;
    const-string v7, "param"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 50
    .local v5, param:Ljava/lang/String;
    const-string v7, "AccountReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BCS_REQUEST : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const-string v7, "AT+CSYNC=NR"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 53
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    .line 54
    .local v0, accounts:[Landroid/accounts/Account;
    const-string v7, "AccountReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "account count is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    array-length v7, v0

    invoke-direct {p0, p1, v7}, Lcom/android/settings/accounts/AccountReceiver;->sendBCSResponse(Landroid/content/Context;I)V

    goto :goto_0

    .line 59
    .end local v0           #accounts:[Landroid/accounts/Account;
    .end local v2           #command:Ljava/lang/String;
    .end local v3           #data:Landroid/os/Bundle;
    .end local v5           #param:Ljava/lang/String;
    :cond_2
    const-string v7, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 60
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 62
    .local v4, extras:Landroid/os/Bundle;
    if-eqz v4, :cond_0

    .line 63
    const-string v7, "account"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/accounts/Account;

    goto :goto_0

    .line 65
    .end local v4           #extras:Landroid/os/Bundle;
    :cond_3
    const-string v7, "android.intent.action.SAMSUNGACCOUNT_SIGNIN_COMPLETED"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 66
    const-string v7, "AccountReceiver"

    const-string v8, "LMM[AccountReceiver] = Samsung account sign out"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 76
    :cond_4
    const-string v7, "android.intent.action.SAMSUNGACCOUNT_SIGNOUT_COMPLETED"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 78
    :try_start_0
    const-string v7, "terrier"

    invoke-static {v7}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 79
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountReceiver;->setRequiredAuthFlagOff()I

    .line 80
    const-string v7, "AccountReceiver"

    const-string v8, "LMM[AccountReceiver] = setRequiredAuthFlagOff()"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 81
    :catch_0
    move-exception v6

    .line 82
    .local v6, ule:Ljava/lang/UnsatisfiedLinkError;
    const-string v7, "AccountReceiver"

    const-string v8, "WARNING: Could not load /system/lib/libterrier.so"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

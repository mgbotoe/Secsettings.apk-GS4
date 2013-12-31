.class public Lcom/android/settings/accounts/AccountCommon;
.super Ljava/lang/Object;
.source "AccountCommon.java"


# static fields
.field private static actionMenuTextColor:I

.field private static deviceThemeStyle:I

.field public static facebookSSOAccountLabel:Ljava/lang/String;

.field public static facebookSSOAccountType:Ljava/lang/String;

.field public static twitterSSOAccountLabel:Ljava/lang/String;

.field public static twitterSSOAccountType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 51
    sput-object v0, Lcom/android/settings/accounts/AccountCommon;->facebookSSOAccountType:Ljava/lang/String;

    .line 53
    sput-object v0, Lcom/android/settings/accounts/AccountCommon;->facebookSSOAccountLabel:Ljava/lang/String;

    .line 62
    sput-object v0, Lcom/android/settings/accounts/AccountCommon;->twitterSSOAccountType:Ljava/lang/String;

    .line 64
    sput-object v0, Lcom/android/settings/accounts/AccountCommon;->twitterSSOAccountLabel:Ljava/lang/String;

    .line 75
    sput v1, Lcom/android/settings/accounts/AccountCommon;->deviceThemeStyle:I

    .line 77
    sput v1, Lcom/android/settings/accounts/AccountCommon;->actionMenuTextColor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAccountSSO(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 133
    invoke-static {p0}, Lcom/android/settings/accounts/AccountCommon;->checkFacebookSSO(Landroid/content/Context;)V

    .line 134
    invoke-static {p0}, Lcom/android/settings/accounts/AccountCommon;->checkTwitterSSO(Landroid/content/Context;)V

    .line 135
    return-void
.end method

.method private static checkFacebookSSO(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 138
    const-string v3, "content://com.sec.android.app.sns3.sp.facebook/sso_account/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 139
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, ssoAccount:Ljava/lang/String;
    const-string v3, "AccountCommon"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "facebook SSO account : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    if-eqz v0, :cond_1

    .line 143
    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, token:[Ljava/lang/String;
    array-length v3, v1

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    .line 145
    const/4 v3, 0x0

    aget-object v3, v1, v3

    sput-object v3, Lcom/android/settings/accounts/AccountCommon;->facebookSSOAccountType:Ljava/lang/String;

    .line 146
    const/4 v3, 0x1

    aget-object v3, v1, v3

    sput-object v3, Lcom/android/settings/accounts/AccountCommon;->facebookSSOAccountLabel:Ljava/lang/String;

    .line 152
    .end local v1           #token:[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    sput-object v6, Lcom/android/settings/accounts/AccountCommon;->facebookSSOAccountType:Ljava/lang/String;

    .line 150
    sput-object v6, Lcom/android/settings/accounts/AccountCommon;->facebookSSOAccountLabel:Ljava/lang/String;

    goto :goto_0
.end method

.method private static checkTwitterSSO(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 155
    const-string v3, "content://com.sec.android.app.sns3.sp.twitter/sso_account/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 156
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, ssoAccount:Ljava/lang/String;
    const-string v3, "AccountCommon"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "twitter SSO account : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    if-eqz v0, :cond_1

    .line 160
    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, token:[Ljava/lang/String;
    array-length v3, v1

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    .line 162
    const/4 v3, 0x0

    aget-object v3, v1, v3

    sput-object v3, Lcom/android/settings/accounts/AccountCommon;->twitterSSOAccountType:Ljava/lang/String;

    .line 163
    const/4 v3, 0x1

    aget-object v3, v1, v3

    sput-object v3, Lcom/android/settings/accounts/AccountCommon;->twitterSSOAccountLabel:Ljava/lang/String;

    .line 169
    .end local v1           #token:[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    sput-object v6, Lcom/android/settings/accounts/AccountCommon;->twitterSSOAccountType:Ljava/lang/String;

    .line 167
    sput-object v6, Lcom/android/settings/accounts/AccountCommon;->twitterSSOAccountLabel:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getSSOAccount(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;
    .locals 5
    .parameter "context"
    .parameter "accoutType"

    .prologue
    const/4 v4, 0x0

    .line 113
    const/4 v1, 0x0

    .line 115
    .local v1, ssoAccount:Landroid/accounts/Account;
    sget-object v2, Lcom/android/settings/accounts/AccountCommon;->facebookSSOAccountType:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v2, "com.sec.android.app.sns3.facebook"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 116
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    sget-object v3, Lcom/android/settings/accounts/AccountCommon;->facebookSSOAccountType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 117
    .local v0, accounts:[Landroid/accounts/Account;
    array-length v2, v0

    if-lez v2, :cond_0

    .line 118
    aget-object v1, v0, v4

    .line 122
    .end local v0           #accounts:[Landroid/accounts/Account;
    :cond_0
    sget-object v2, Lcom/android/settings/accounts/AccountCommon;->twitterSSOAccountType:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string v2, "com.sec.android.app.sns3.twitter"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 123
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    sget-object v3, Lcom/android/settings/accounts/AccountCommon;->twitterSSOAccountType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 124
    .restart local v0       #accounts:[Landroid/accounts/Account;
    array-length v2, v0

    if-lez v2, :cond_1

    .line 125
    aget-object v1, v0, v4

    .line 129
    .end local v0           #accounts:[Landroid/accounts/Account;
    :cond_1
    return-object v1
.end method

.method public static isActionbarLightTheme(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 101
    sget v3, Lcom/android/settings/accounts/AccountCommon;->actionMenuTextColor:I

    if-gez v3, :cond_0

    .line 102
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 103
    .local v0, outValue:Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x1010361

    invoke-virtual {v3, v4, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 104
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    const v4, 0xffffff

    and-int/2addr v3, v4

    sput v3, Lcom/android/settings/accounts/AccountCommon;->actionMenuTextColor:I

    .line 105
    const-string v3, "AccountCommon"

    const-string v4, "actionMenuTextColor : 0x%8x 0x%6x"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    sget v6, Lcom/android/settings/accounts/AccountCommon;->actionMenuTextColor:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .end local v0           #outValue:Landroid/util/TypedValue;
    :cond_0
    sget v3, Lcom/android/settings/accounts/AccountCommon;->actionMenuTextColor:I

    const v4, 0x888888

    if-ge v3, v4, :cond_1

    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public static isLightTheme(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 80
    sget v3, Lcom/android/settings/accounts/AccountCommon;->deviceThemeStyle:I

    if-gez v3, :cond_0

    .line 81
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 82
    .local v0, outValue:Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x10102ce

    invoke-virtual {v3, v4, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 83
    iget v3, v0, Landroid/util/TypedValue;->resourceId:I

    sparse-switch v3, :sswitch_data_0

    .line 91
    sput v2, Lcom/android/settings/accounts/AccountCommon;->deviceThemeStyle:I

    .line 93
    :goto_0
    const-string v3, "AccountCommon"

    const-string v4, "actionBarStyle : 0x%x, deviceThemeStyle = %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    sget v6, Lcom/android/settings/accounts/AccountCommon;->deviceThemeStyle:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .end local v0           #outValue:Landroid/util/TypedValue;
    :cond_0
    sget v3, Lcom/android/settings/accounts/AccountCommon;->deviceThemeStyle:I

    if-ne v3, v1, :cond_1

    :goto_1
    return v1

    .line 86
    .restart local v0       #outValue:Landroid/util/TypedValue;
    :sswitch_0
    sput v1, Lcom/android/settings/accounts/AccountCommon;->deviceThemeStyle:I

    goto :goto_0

    .end local v0           #outValue:Landroid/util/TypedValue;
    :cond_1
    move v1, v2

    .line 97
    goto :goto_1

    .line 83
    :sswitch_data_0
    .sparse-switch
        0x10300e1 -> :sswitch_0
        0x10301a3 -> :sswitch_0
    .end sparse-switch
.end method

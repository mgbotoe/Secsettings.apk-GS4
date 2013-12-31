.class public Lcom/android/settings/RetailModeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RetailModeReceiver.java"


# static fields
.field private static RIGHTBRAIN_FINGERPRINT:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "B21028806901D913C0E2CD791BC63BB1BF58F722"

    sput-object v0, Lcom/android/settings/RetailModeReceiver;->RIGHTBRAIN_FINGERPRINT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static getFingerPrintString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 78
    .local v1, pm:Landroid/content/pm/PackageManager;
    const/16 v4, 0x40

    :try_start_0
    invoke-virtual {v1, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 79
    .local v0, info:Landroid/content/pm/PackageInfo;
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 80
    .local v2, sig:[Landroid/content/pm/Signature;
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-virtual {v4}, Landroid/content/pm/Signature;->toChars()[C

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    .line 81
    .local v3, signstring:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/RetailModeReceiver;->getSHA1HashValue(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 84
    .end local v0           #info:Landroid/content/pm/PackageInfo;
    .end local v2           #sig:[Landroid/content/pm/Signature;
    .end local v3           #signstring:Ljava/lang/String;
    :goto_0
    return-object v4

    .line 82
    :catch_0
    move-exception v4

    .line 84
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static getRandomNoFromSender(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "packageName"

    .prologue
    const/4 v2, 0x0

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".shopdemoCP"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 111
    .local v6, AUTHORITY:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 112
    .local v1, CONTENT_URI:Landroid/net/Uri;
    const/4 v7, 0x0

    .line 113
    .local v7, a:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 114
    .local v8, mCursor:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 115
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 119
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 121
    :cond_1
    return-object v7
.end method

.method public static getSHA1HashValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "toHash"

    .prologue
    .line 88
    const/4 v5, 0x0

    .line 90
    .local v5, hash:Ljava/lang/String;
    :try_start_0
    const-string v9, "SHA-1"

    invoke-static {v9}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 91
    .local v3, digest:Ljava/security/MessageDigest;
    const-string v9, "UTF-8"

    invoke-virtual {p0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 92
    .local v2, bytes:[B
    const/4 v9, 0x0

    array-length v10, v2

    invoke-virtual {v3, v2, v9, v10}, Ljava/security/MessageDigest;->update([BII)V

    .line 93
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 94
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .local v8, sb:Ljava/lang/StringBuilder;
    move-object v0, v2

    .local v0, arr$:[B
    array-length v7, v0

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v7, :cond_0

    aget-byte v1, v0, v6

    .line 97
    .local v1, b:B
    const-string v9, "%02X"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 99
    .end local v1           #b:B
    :cond_0
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 106
    .end local v0           #arr$:[B
    .end local v2           #bytes:[B
    .end local v3           #digest:Ljava/security/MessageDigest;
    .end local v6           #i$:I
    .end local v7           #len$:I
    .end local v8           #sb:Ljava/lang/StringBuilder;
    :goto_1
    return-object v5

    .line 100
    :catch_0
    move-exception v4

    .line 101
    .local v4, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v4}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_1

    .line 102
    .end local v4           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v4

    .line 103
    .local v4, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method

.method public static testSenderSignatureForSecurity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "context"
    .parameter "packageName"
    .parameter "randomNo"

    .prologue
    const/4 v4, 0x0

    .line 38
    if-nez p1, :cond_1

    .line 72
    :cond_0
    :goto_0
    return v4

    .line 39
    :cond_1
    if-eqz p2, :cond_0

    .line 46
    invoke-static {p0, p1}, Lcom/android/settings/RetailModeReceiver;->getFingerPrintString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, fingerPrint:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 49
    const/4 v1, 0x0

    .line 52
    .local v1, isCheckFingerPrint:Z
    sget-object v5, Lcom/android/settings/RetailModeReceiver;->RIGHTBRAIN_FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 53
    const/4 v1, 0x1

    .line 62
    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    .line 64
    invoke-static {p0, p1}, Lcom/android/settings/RetailModeReceiver;->getRandomNoFromSender(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, randomNofromSender:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 67
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 68
    const/4 v4, 0x1

    goto :goto_0

    .line 56
    .end local v3           #randomNofromSender:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/settings/RetailModeReceiver;->getFingerPrintString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, myFingerPrint:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 58
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 24
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, action:Ljava/lang/String;
    const-string v3, "package"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 27
    .local v1, packageName:Ljava/lang/String;
    const-string v3, "randomno"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 29
    .local v2, randomNo:Ljava/lang/String;
    invoke-static {p1, v1, v2}, Lcom/android/settings/RetailModeReceiver;->testSenderSignatureForSecurity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 30
    const-string v3, "shopdemo_on"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "shopdemo"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 35
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "shopdemo"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.class public Lcom/android/settings/accountmanagement/AccountManager;
.super Ljava/lang/Object;
.source "AccountManager.java"


# static fields
.field private static isInitialised:Z

.field private static mAccountManager:Lcom/android/settings/accountmanagement/AccountManager;


# instance fields
.field private final ACCOUNT_CONTENT_URI:Landroid/net/Uri;

.field private final AUTHORITY:Ljava/lang/String;

.field private final GROUP_ID:Ljava/lang/String;

.field private final NICK_NAME:Ljava/lang/String;

.field private final PERMISSION_CONTENT_URI:Landroid/net/Uri;

.field private final SAMSUNG_ID:Ljava/lang/String;

.field private final SECURE_CONTENT_URI:Landroid/net/Uri;

.field private final SPC_ACCOUNT_TABLE:Ljava/lang/String;

.field private final SPC_PERMISSION_TABLE:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private final USER_ADMIN:Ljava/lang/String;

.field private final USER_DIVISION:Ljava/lang/String;

.field private final USER_GUEST:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, "com.sec.android.spc.easysetup.account.AccountContentProvider"

    iput-object v0, p0, Lcom/android/settings/accountmanagement/AccountManager;->AUTHORITY:Ljava/lang/String;

    .line 17
    const-string v0, "permission"

    iput-object v0, p0, Lcom/android/settings/accountmanagement/AccountManager;->SPC_PERMISSION_TABLE:Ljava/lang/String;

    .line 18
    const-string v0, "account"

    iput-object v0, p0, Lcom/android/settings/accountmanagement/AccountManager;->SPC_ACCOUNT_TABLE:Ljava/lang/String;

    .line 20
    const-string v0, "content://com.sec.android.spc.easysetup.account.AccountContentProvider/account"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accountmanagement/AccountManager;->ACCOUNT_CONTENT_URI:Landroid/net/Uri;

    .line 21
    const-string v0, "content://com.sec.android.spc.easysetup.account.AccountContentProvider/permission"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accountmanagement/AccountManager;->PERMISSION_CONTENT_URI:Landroid/net/Uri;

    .line 22
    const-string v0, "SamsungId"

    iput-object v0, p0, Lcom/android/settings/accountmanagement/AccountManager;->SAMSUNG_ID:Ljava/lang/String;

    const-string v0, "UserId"

    iput-object v0, p0, Lcom/android/settings/accountmanagement/AccountManager;->GROUP_ID:Ljava/lang/String;

    const-string v0, "admin"

    iput-object v0, p0, Lcom/android/settings/accountmanagement/AccountManager;->USER_ADMIN:Ljava/lang/String;

    const-string v0, "guest"

    iput-object v0, p0, Lcom/android/settings/accountmanagement/AccountManager;->USER_GUEST:Ljava/lang/String;

    .line 24
    const-string v0, "NickName"

    iput-object v0, p0, Lcom/android/settings/accountmanagement/AccountManager;->NICK_NAME:Ljava/lang/String;

    .line 25
    const-string v0, "UserDivision"

    iput-object v0, p0, Lcom/android/settings/accountmanagement/AccountManager;->USER_DIVISION:Ljava/lang/String;

    .line 30
    const-string v0, "content://com.sec.android.spc.database/SecuredFolder"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accountmanagement/AccountManager;->SECURE_CONTENT_URI:Landroid/net/Uri;

    .line 37
    const-string v0, "AccountManager"

    iput-object v0, p0, Lcom/android/settings/accountmanagement/AccountManager;->TAG:Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/android/settings/accountmanagement/AccountManager;->mContext:Landroid/content/Context;

    .line 42
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/accountmanagement/AccountManager;->isInitialised:Z

    .line 59
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/settings/accountmanagement/AccountManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 62
    sget-boolean v0, Lcom/android/settings/accountmanagement/AccountManager;->isInitialised:Z

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/android/settings/accountmanagement/AccountManager;

    invoke-direct {v0, p0}, Lcom/android/settings/accountmanagement/AccountManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/accountmanagement/AccountManager;->mAccountManager:Lcom/android/settings/accountmanagement/AccountManager;

    .line 64
    :cond_0
    sget-object v0, Lcom/android/settings/accountmanagement/AccountManager;->mAccountManager:Lcom/android/settings/accountmanagement/AccountManager;

    return-object v0
.end method


# virtual methods
.method public dBGetTotalSecuredFileInfo(Ljava/lang/String;)D
    .locals 12
    .parameter "groupId"

    .prologue
    const-wide/16 v10, 0x0

    .line 300
    iget-object v1, p0, Lcom/android/settings/accountmanagement/AccountManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 301
    .local v0, mContentResolver:Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move-wide v8, v10

    .line 336
    :cond_1
    :goto_0
    return-wide v8

    .line 305
    :cond_2
    const-wide/16 v8, 0x0

    .line 306
    .local v8, size:D
    const/4 v6, 0x0

    .line 308
    .local v6, cursorFinal:Landroid/database/Cursor;
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GroupId LIKE \'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 310
    .local v3, saIdSel:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "Size"

    aput-object v4, v2, v1

    .line 311
    .local v2, projection:[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/accountmanagement/AccountManager;->SECURE_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 313
    if-nez v6, :cond_4

    .line 331
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 332
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 333
    const/4 v6, 0x0

    :cond_3
    move-wide v8, v10

    goto :goto_0

    .line 317
    :cond_4
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 318
    const-string v1, "Size"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getDouble(I)D
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v8

    .line 331
    :goto_1
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 332
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 333
    const/4 v6, 0x0

    goto :goto_0

    .line 321
    :cond_5
    const-wide/16 v8, 0x0

    goto :goto_1

    .line 324
    .end local v2           #projection:[Ljava/lang/String;
    .end local v3           #saIdSel:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 325
    .local v7, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 326
    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_6

    .line 327
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 328
    const/4 v6, 0x0

    .line 331
    :cond_6
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 332
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 333
    const/4 v6, 0x0

    goto :goto_0

    .line 331
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_7

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_7

    .line 332
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 333
    const/4 v6, 0x0

    :cond_7
    throw v1
.end method

.method public getAdminSamsungId()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 70
    iget-object v1, p0, Lcom/android/settings/accountmanagement/AccountManager;->TAG:Ljava/lang/String;

    const-string v5, "getAdminSamsungId is called"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v1, p0, Lcom/android/settings/accountmanagement/AccountManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 72
    .local v0, mContentResolver:Landroid/content/ContentResolver;
    if-nez v0, :cond_0

    .line 73
    iget-object v1, p0, Lcom/android/settings/accountmanagement/AccountManager;->TAG:Ljava/lang/String;

    const-string v5, "Fail to get Admin GroupId > Content Provider is null"

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :goto_0
    return-object v4

    .line 77
    :cond_0
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "UserDivision"

    aput-object v5, v2, v1

    const/4 v1, 0x1

    const-string v5, "SamsungId"

    aput-object v5, v2, v1

    .line 78
    .local v2, projection:[Ljava/lang/String;
    const-string v3, "UserDivision LIKE \'admin\'"

    .line 79
    .local v3, userDivisionSel:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/accountmanagement/AccountManager;->ACCOUNT_CONTENT_URI:Landroid/net/Uri;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 82
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 83
    iget-object v1, p0, Lcom/android/settings/accountmanagement/AccountManager;->TAG:Ljava/lang/String;

    const-string v5, "getAdminSamsungId > cursor is null"

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 87
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_2

    .line 88
    iget-object v1, p0, Lcom/android/settings/accountmanagement/AccountManager;->TAG:Ljava/lang/String;

    const-string v5, "getAdminSamsungId > cursor  count is zero"

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 93
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 94
    const-string v1, "SamsungId"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 96
    .local v7, samsungAccountId:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/accountmanagement/AccountManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAdminSamsungId > samsungAccountId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v4, v7

    .line 99
    goto :goto_0

    .line 101
    .end local v7           #samsungAccountId:Ljava/lang/String;
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public getEasySetupAccountId()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 264
    iget-object v1, p0, Lcom/android/settings/accountmanagement/AccountManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 265
    .local v0, mContentResolver:Landroid/content/ContentResolver;
    if-nez v0, :cond_0

    .line 266
    iget-object v1, p0, Lcom/android/settings/accountmanagement/AccountManager;->TAG:Ljava/lang/String;

    const-string v5, "Fail to get Admin GroupId > Content Provider is null"

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v4

    .line 295
    :goto_0
    return-object v7

    .line 270
    :cond_0
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "UserDivision"

    aput-object v5, v2, v1

    const/4 v1, 0x1

    const-string v5, "SamsungId"

    aput-object v5, v2, v1

    .line 271
    .local v2, projection:[Ljava/lang/String;
    const-string v3, "UserDivision LIKE \'guest\'"

    .line 272
    .local v3, userDivisionSel:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/accountmanagement/AccountManager;->ACCOUNT_CONTENT_URI:Landroid/net/Uri;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 274
    .local v6, cursor:Landroid/database/Cursor;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 275
    .local v7, guestSamsungAccountList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v6, :cond_1

    .line 276
    iget-object v1, p0, Lcom/android/settings/accountmanagement/AccountManager;->TAG:Ljava/lang/String;

    const-string v4, "getAdminGroupId > cursor is null"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 280
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_2

    .line 281
    iget-object v1, p0, Lcom/android/settings/accountmanagement/AccountManager;->TAG:Ljava/lang/String;

    const-string v4, "getAdminGroupId > cursor count is zero"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 286
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 289
    :cond_3
    const-string v1, "SamsungId"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 291
    .local v8, samsungAccountId:Ljava/lang/String;
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_3

    .line 294
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public getGroupIdBySamsungAccountId(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "samsungAccountId"

    .prologue
    const/4 v4, 0x0

    .line 144
    const/4 v7, 0x0

    .line 145
    .local v7, groupId:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/accountmanagement/AccountManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 146
    .local v0, mContentResolver:Landroid/content/ContentResolver;
    if-nez v0, :cond_0

    .line 147
    iget-object v1, p0, Lcom/android/settings/accountmanagement/AccountManager;->TAG:Ljava/lang/String;

    const-string v5, "Fail to get GroupId > Content Provider is null"

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :goto_0
    return-object v4

    .line 151
    :cond_0
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "UserId"

    aput-object v5, v2, v1

    .line 152
    .local v2, projection:[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SamsungId LIKE \'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 153
    .local v3, saIdSel:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/accountmanagement/AccountManager;->ACCOUNT_CONTENT_URI:Landroid/net/Uri;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 155
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 156
    iget-object v1, p0, Lcom/android/settings/accountmanagement/AccountManager;->TAG:Ljava/lang/String;

    const-string v5, "Fail to get GroupId > cursor is null"

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 160
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_2

    .line 161
    iget-object v1, p0, Lcom/android/settings/accountmanagement/AccountManager;->TAG:Ljava/lang/String;

    const-string v5, "Fail to get GroupId > cursor  count is zero"

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 166
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 167
    const-string v1, "UserId"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 168
    iget-object v1, p0, Lcom/android/settings/accountmanagement/AccountManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getGroupIdBySamsungAccountId > groupId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v4, v7

    .line 170
    goto :goto_0

    .line 172
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public getGuestSamsungAccountId()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 108
    iget-object v1, p0, Lcom/android/settings/accountmanagement/AccountManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 109
    .local v0, mContentResolver:Landroid/content/ContentResolver;
    if-nez v0, :cond_0

    .line 110
    iget-object v1, p0, Lcom/android/settings/accountmanagement/AccountManager;->TAG:Ljava/lang/String;

    const-string v3, "getGuestSamsungAccountId > Content Provider is null"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v2

    .line 139
    :goto_0
    return-object v7

    .line 114
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v7, guestSamsungAccountList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/settings/accountmanagement/AccountManager;->PERMISSION_CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 118
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 119
    iget-object v1, p0, Lcom/android/settings/accountmanagement/AccountManager;->TAG:Ljava/lang/String;

    const-string v2, "getGuestSamsungAccountId > cursor is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 123
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_2

    .line 124
    iget-object v1, p0, Lcom/android/settings/accountmanagement/AccountManager;->TAG:Ljava/lang/String;

    const-string v2, "getGuestSamsungAccountId > cursor count is zero"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 129
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 132
    :cond_3
    const-string v1, "SamsungId"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 134
    .local v8, samsungAccountId:Ljava/lang/String;
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_3

    .line 138
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

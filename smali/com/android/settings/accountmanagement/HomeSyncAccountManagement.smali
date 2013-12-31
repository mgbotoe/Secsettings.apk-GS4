.class public Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;
.super Landroid/app/Fragment;
.source "HomeSyncAccountManagement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accountmanagement/HomeSyncAccountManagement$InsertReceiver;,
        Lcom/android/settings/accountmanagement/HomeSyncAccountManagement$MemberAdapter;
    }
.end annotation


# static fields
.field private static adminsecurestorage:D

.field private static list:Landroid/widget/ListView;

.field private static rootView:Landroid/view/View;


# instance fields
.field private accountManager:Lcom/android/settings/accountmanagement/AccountManager;

.field private isAdmin:Z

.field private isDeletemode:Z

.field private mAccountAL:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAddMenuItem:Landroid/view/MenuItem;

.field private mAdimAccountid:Ljava/lang/String;

.field private mAdimGroupid:Ljava/lang/String;

.field private mChangeMenuItem:Landroid/view/MenuItem;

.field private mCleanStorageMenuItem:Landroid/view/MenuItem;

.field private mDeleteAdminMenuItem:Landroid/view/MenuItem;

.field private mDeleteMenuItem:Landroid/view/MenuItem;

.field private mEasysetupAccount:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mResetPasswordMenuItem:Landroid/view/MenuItem;

.field private view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->rootView:Landroid/view/View;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mEasysetupAccount:Ljava/util/ArrayList;

    .line 512
    return-void
.end method

.method static synthetic access$000()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->list:Landroid/widget/ListView;

    return-object v0
.end method

.method public static round(DI)D
    .locals 8
    .parameter "value"
    .parameter "places"

    .prologue
    .line 426
    if-gez p2, :cond_0

    const-wide/16 v4, 0x0

    .line 430
    :goto_0
    return-wide v4

    .line 427
    :cond_0
    const-wide/high16 v4, 0x4024

    int-to-double v6, p2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-long v0, v4

    .line 428
    .local v0, factor:J
    long-to-double v4, v0

    mul-double/2addr p0, v4

    .line 429
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    .line 430
    .local v2, tmp:J
    div-long v4, v2, v0

    long-to-double v4, v4

    goto :goto_0
.end method

.method private setTempData(Landroid/view/View;)V
    .locals 13
    .parameter "rootView"

    .prologue
    .line 171
    const v9, 0x7f0b01c8

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 172
    .local v2, layout:Landroid/view/View;
    const v9, 0x7f0b0132

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 173
    .local v7, tvName:Landroid/widget/TextView;
    const/16 v9, 0x8

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    const v9, 0x7f0b01ce

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 175
    .local v5, tvEmail:Landroid/widget/TextView;
    iget-object v9, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mAdimAccountid:Ljava/lang/String;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    const v9, 0x7f0b01d0

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 177
    .local v6, tvISRegister:Landroid/widget/TextView;
    const v9, 0x7f091454

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(I)V

    .line 178
    invoke-virtual {p0}, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d0030

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 179
    const v9, 0x7f0b01d2

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 180
    .local v8, tvSize:Landroid/widget/TextView;
    sget-wide v9, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->adminsecurestorage:D

    const/4 v11, 0x2

    invoke-static {v9, v10, v11}, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->round(DI)D

    move-result-wide v9

    const-wide/high16 v11, 0x4090

    cmpg-double v9, v9, v11

    if-gtz v9, :cond_0

    .line 181
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v10, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->adminsecurestorage:D

    const/4 v12, 0x2

    invoke-static {v10, v11, v12}, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->round(DI)D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " MB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    :goto_0
    const v9, 0x7f0b01c7

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 187
    .local v0, headerAdmin:Landroid/widget/TextView;
    const v9, 0x7f091451

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(I)V

    .line 188
    const v9, 0x7f0b01c9

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 189
    .local v1, headerGuest:Landroid/widget/TextView;
    const v9, 0x7f091452

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(I)V

    .line 190
    return-void

    .line 183
    .end local v0           #headerAdmin:Landroid/widget/TextView;
    .end local v1           #headerGuest:Landroid/widget/TextView;
    :cond_0
    sget-wide v9, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->adminsecurestorage:D

    const/4 v11, 0x2

    invoke-static {v9, v10, v11}, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->round(DI)D

    move-result-wide v9

    const-wide/high16 v11, 0x4090

    div-double v3, v9, v11

    .line 184
    .local v3, size:D
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x2

    invoke-static {v3, v4, v10}, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->round(DI)D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " GB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public initialisedata()V
    .locals 4

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->accountManager:Lcom/android/settings/accountmanagement/AccountManager;

    invoke-virtual {v0}, Lcom/android/settings/accountmanagement/AccountManager;->getAdminSamsungId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mAdimAccountid:Ljava/lang/String;

    .line 89
    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->accountManager:Lcom/android/settings/accountmanagement/AccountManager;

    invoke-virtual {v0}, Lcom/android/settings/accountmanagement/AccountManager;->getGuestSamsungAccountId()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mAccountAL:Ljava/util/ArrayList;

    .line 90
    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->accountManager:Lcom/android/settings/accountmanagement/AccountManager;

    invoke-virtual {v0}, Lcom/android/settings/accountmanagement/AccountManager;->getEasySetupAccountId()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mEasysetupAccount:Ljava/util/ArrayList;

    .line 91
    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->accountManager:Lcom/android/settings/accountmanagement/AccountManager;

    iget-object v1, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mAdimAccountid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/accountmanagement/AccountManager;->getGroupIdBySamsungAccountId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mAdimGroupid:Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->accountManager:Lcom/android/settings/accountmanagement/AccountManager;

    iget-object v1, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mAdimGroupid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/accountmanagement/AccountManager;->dBGetTotalSecuredFileInfo(Ljava/lang/String;)D

    move-result-wide v0

    sput-wide v0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->adminsecurestorage:D

    .line 93
    sget-wide v0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->adminsecurestorage:D

    const-wide/high16 v2, 0x4130

    div-double/2addr v0, v2

    sput-wide v0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->adminsecurestorage:D

    .line 94
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 76
    const-string v0, "Settings"

    const-string v1, " HomeSync Account Management:   onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 324
    const-string v0, "Settings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestCode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    if-ne p2, v3, :cond_0

    .line 328
    const-string v0, "Settings"

    const-string v1, "is_delete success"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iput-boolean v4, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->isDeletemode:Z

    .line 330
    invoke-virtual {p0}, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 331
    invoke-virtual {p0}, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->refreshView()V

    .line 334
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    if-ne p2, v3, :cond_1

    .line 335
    const-string v0, "Settings"

    const-string v1, "is_delete success"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iput-boolean v4, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->isDeletemode:Z

    .line 337
    invoke-virtual {p0}, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 338
    invoke-virtual {p0}, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->refreshView()V

    .line 341
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    if-ne p2, v3, :cond_2

    .line 342
    const-string v0, "is_add"

    invoke-virtual {p3, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 343
    const-string v0, "Settings"

    const-string v1, "is_add success"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-virtual {p0}, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->refreshView()V

    .line 348
    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    if-ne p2, v3, :cond_3

    .line 349
    const-string v0, "is_change"

    invoke-virtual {p3, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 350
    const-string v0, "Settings"

    const-string v1, "is_change_success"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    invoke-virtual {p0}, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->refreshView()V

    .line 362
    :cond_3
    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    if-ne p2, v3, :cond_4

    .line 363
    const-string v0, "is_passwordreset"

    invoke-virtual {p3, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 364
    const-string v0, "Settings"

    const-string v1, "is_recover_success"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-virtual {p0}, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->refreshView()V

    .line 369
    :cond_4
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 370
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 82
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->setHasOptionsMenu(Z)V

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/accountmanagement/AccountManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/accountmanagement/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->accountManager:Lcom/android/settings/accountmanagement/AccountManager;

    .line 85
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 193
    const v0, 0x7f091445

    invoke-interface {p1, v2, v4, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mAddMenuItem:Landroid/view/MenuItem;

    .line 194
    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mAddMenuItem:Landroid/view/MenuItem;

    const v1, 0x7f0202b9

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 195
    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mAddMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 196
    const v0, 0x7f091446

    invoke-interface {p1, v2, v5, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mDeleteMenuItem:Landroid/view/MenuItem;

    .line 197
    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mDeleteMenuItem:Landroid/view/MenuItem;

    const v1, 0x7f0202bd

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 198
    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mDeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 199
    const/4 v0, 0x3

    const v1, 0x7f091447

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mChangeMenuItem:Landroid/view/MenuItem;

    .line 200
    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mChangeMenuItem:Landroid/view/MenuItem;

    const v1, 0x7f0202ba

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 201
    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mChangeMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 202
    const/4 v0, 0x5

    const v1, 0x7f091448

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mDeleteAdminMenuItem:Landroid/view/MenuItem;

    .line 203
    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mDeleteAdminMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 204
    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mDeleteAdminMenuItem:Landroid/view/MenuItem;

    const v1, 0x7f0202bc

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 205
    const/4 v0, 0x6

    const v1, 0x7f091449

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mCleanStorageMenuItem:Landroid/view/MenuItem;

    .line 206
    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mCleanStorageMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 207
    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mCleanStorageMenuItem:Landroid/view/MenuItem;

    const v1, 0x7f0202bb

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 213
    const v0, 0x7f09144a

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mResetPasswordMenuItem:Landroid/view/MenuItem;

    .line 214
    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mResetPasswordMenuItem:Landroid/view/MenuItem;

    const v1, 0x7f0202be

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 215
    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mResetPasswordMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 216
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 217
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 18
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 99
    const v14, 0x7f0400b5

    const/4 v15, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v14, v1, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v14

    sput-object v14, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->rootView:Landroid/view/View;

    .line 100
    sget-object v14, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->rootView:Landroid/view/View;

    const v15, 0x7f0b01c3

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 101
    .local v11, management_firstrow:Landroid/widget/TextView;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "- "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const v15, 0x7f091451

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    sget-object v14, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->rootView:Landroid/view/View;

    const v15, 0x7f0b01c5

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 104
    .local v12, management_secondtrow:Landroid/widget/TextView;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "- "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const v15, 0x7f091452

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    sget-object v14, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->rootView:Landroid/view/View;

    const v15, 0x7f0b01ca

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ListView;

    sput-object v14, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->list:Landroid/widget/ListView;

    .line 107
    sget-object v14, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->rootView:Landroid/view/View;

    const v15, 0x7f0b01cb

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->view:Landroid/view/View;

    .line 108
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->initialisedata()V

    .line 111
    const-string v14, "Settings"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mAdimAccountid"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mAdimAccountid:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mAdimAccountid:Ljava/lang/String;

    if-eqz v14, :cond_2

    .line 113
    sget-object v14, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->rootView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->setTempData(Landroid/view/View;)V

    .line 114
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->isAdmin:Z

    .line 115
    new-instance v5, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement$1;-><init>(Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;)V

    .line 124
    .local v5, emptyTextVeiwOnClickListener:Landroid/view/View$OnClickListener;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mAccountAL:Ljava/util/ArrayList;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mAccountAL:Ljava/util/ArrayList;

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mAccountAL:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-nez v14, :cond_1

    .line 125
    :cond_0
    sget-object v14, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->list:Landroid/widget/ListView;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/ListView;->setVisibility(I)V

    .line 126
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->view:Landroid/view/View;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 127
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->view:Landroid/view/View;

    const v15, 0x7f0b01cc

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 128
    .local v3, admintitle:Landroid/widget/TextView;
    const v14, 0x7f091456

    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setText(I)V

    .line 129
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->view:Landroid/view/View;

    const v15, 0x7f0b01cd

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 130
    .local v2, admindescription:Landroid/widget/TextView;
    const v14, 0x7f09144d

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setText(I)V

    .line 131
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->view:Landroid/view/View;

    invoke-virtual {v14, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    .end local v2           #admindescription:Landroid/widget/TextView;
    .end local v3           #admintitle:Landroid/widget/TextView;
    .end local v5           #emptyTextVeiwOnClickListener:Landroid/view/View$OnClickListener;
    :goto_0
    sget-object v14, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->rootView:Landroid/view/View;

    return-object v14

    .line 134
    .restart local v5       #emptyTextVeiwOnClickListener:Landroid/view/View$OnClickListener;
    :cond_1
    sget-object v14, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->list:Landroid/widget/ListView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/ListView;->setVisibility(I)V

    .line 135
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->view:Landroid/view/View;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 136
    new-instance v4, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement$MemberAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mAccountAL:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mEasysetupAccount:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v4, v14, v15, v0, v1}, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement$MemberAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 137
    .local v4, adpt:Lcom/android/settings/accountmanagement/HomeSyncAccountManagement$MemberAdapter;
    sget-object v14, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->list:Landroid/widget/ListView;

    invoke-virtual {v14, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 142
    .end local v4           #adpt:Lcom/android/settings/accountmanagement/HomeSyncAccountManagement$MemberAdapter;
    .end local v5           #emptyTextVeiwOnClickListener:Landroid/view/View$OnClickListener;
    :cond_2
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->isAdmin:Z

    .line 143
    sget-object v14, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->rootView:Landroid/view/View;

    const v15, 0x7f0b01c7

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 144
    .local v8, headerAdmin:Landroid/widget/TextView;
    const v14, 0x7f091451

    invoke-virtual {v8, v14}, Landroid/widget/TextView;->setText(I)V

    .line 145
    sget-object v14, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->rootView:Landroid/view/View;

    const v15, 0x7f0b01c8

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 146
    .local v10, layout:Landroid/view/View;
    const/16 v14, 0x8

    invoke-virtual {v10, v14}, Landroid/view/View;->setVisibility(I)V

    .line 147
    const v14, 0x7f0b01cf

    invoke-virtual {v10, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 148
    .local v13, separator:Landroid/view/View;
    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 149
    sget-object v14, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->rootView:Landroid/view/View;

    const v15, 0x7f0b01c9

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 150
    .local v9, headerGuest:Landroid/widget/TextView;
    const/16 v14, 0x8

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    sget-object v14, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->list:Landroid/widget/ListView;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/ListView;->setVisibility(I)V

    .line 152
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->view:Landroid/view/View;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 153
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->view:Landroid/view/View;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->view:Landroid/view/View;

    const v15, 0x7f0b01cc

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 155
    .local v7, guesttitle:Landroid/widget/TextView;
    const v14, 0x7f091457

    invoke-virtual {v7, v14}, Landroid/widget/TextView;->setText(I)V

    .line 156
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->view:Landroid/view/View;

    const v15, 0x7f0b01cd

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 157
    .local v6, guestdescription:Landroid/widget/TextView;
    const v14, 0x7f091450

    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setText(I)V

    .line 165
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto/16 :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .parameter "item"

    .prologue
    const/4 v6, 0x1

    .line 222
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 277
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v6

    :goto_0
    return v6

    .line 228
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v7, "com.sec.android.spc.spcsetting.ACTION_ACCOUNT_MANAGE"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 229
    .local v0, intent:Landroid/content/Intent;
    const-string v7, "key_request_for"

    const-string v8, "addrequest"

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    const/4 v7, 0x3

    invoke-virtual {p0, v0, v7}, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 234
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    const-string v7, "com.sec.android.spc.spcsetting.ACTION_ACCOUNT_MANAGE"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 235
    .local v1, intent1:Landroid/content/Intent;
    const-string v7, "key_request_for"

    const-string v8, "deleterequest"

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    invoke-virtual {p0, v1, v6}, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 240
    .end local v1           #intent1:Landroid/content/Intent;
    :pswitch_2
    new-instance v2, Landroid/content/Intent;

    const-string v7, "com.sec.android.spc.spcsetting.ACTION_ACCOUNT_MANAGE"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 241
    .local v2, intent2:Landroid/content/Intent;
    const-string v7, "key_request_for"

    const-string v8, "changerequest"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    const/4 v7, 0x4

    invoke-virtual {p0, v2, v7}, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 246
    .end local v2           #intent2:Landroid/content/Intent;
    :pswitch_3
    new-instance v4, Landroid/content/Intent;

    const-string v7, "com.sec.android.spc.spcsetting.ACTION_ACCOUNT_MANAGE"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 247
    .local v4, intent4:Landroid/content/Intent;
    const-string v7, "key_request_for"

    const-string v8, "deleteadminrequest"

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    invoke-virtual {p0, v4, v6}, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 252
    .end local v4           #intent4:Landroid/content/Intent;
    :pswitch_4
    new-instance v5, Landroid/content/Intent;

    const-string v7, "com.sec.android.spc.spcsetting.ACTION_ACCOUNT_MANAGE"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 253
    .local v5, intent5:Landroid/content/Intent;
    const-string v7, "key_request_for"

    const-string v8, "deletestoragerequest"

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    invoke-virtual {p0, v5, v6}, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 272
    .end local v5           #intent5:Landroid/content/Intent;
    :pswitch_5
    new-instance v3, Landroid/content/Intent;

    const-string v7, "com.sec.android.spc.spcsetting.ACTION_ACCOUNT_MANAGE"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 273
    .local v3, intent3:Landroid/content/Intent;
    const-string v7, "key_request_for"

    const-string v8, "passwordresetrequest"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    const/4 v7, 0x5

    invoke-virtual {p0, v3, v7}, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 222
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 284
    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mAdimAccountid:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 285
    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mAddMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 286
    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mDeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 287
    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mResetPasswordMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 288
    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mCleanStorageMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 289
    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mAccountAL:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mAccountAL:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ltz v0, :cond_1

    .line 290
    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mEasysetupAccount:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mEasysetupAccount:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mDeleteAdminMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 293
    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mDeleteAdminMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 294
    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mChangeMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 295
    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mChangeMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 320
    :goto_0
    return-void

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mDeleteAdminMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 298
    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mDeleteAdminMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 299
    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mChangeMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 300
    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mChangeMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mDeleteAdminMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 305
    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mDeleteAdminMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 306
    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mChangeMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 307
    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mChangeMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 311
    :cond_2
    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mAddMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 312
    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mDeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 313
    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mResetPasswordMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 314
    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mCleanStorageMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 315
    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mDeleteAdminMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 316
    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mDeleteAdminMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 317
    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mChangeMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 318
    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mChangeMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public refreshView()V
    .locals 14

    .prologue
    .line 374
    invoke-virtual {p0}, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->initialisedata()V

    .line 375
    iget-object v10, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mAdimAccountid:Ljava/lang/String;

    if-eqz v10, :cond_3

    .line 376
    sget-object v10, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->rootView:Landroid/view/View;

    invoke-direct {p0, v10}, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->setTempData(Landroid/view/View;)V

    .line 377
    invoke-virtual {p0}, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 378
    new-instance v3, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement$2;

    invoke-direct {v3, p0}, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement$2;-><init>(Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;)V

    .line 386
    .local v3, emptyTextVeiwOnClickListener:Landroid/view/View$OnClickListener;
    iget-object v10, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mAccountAL:Ljava/util/ArrayList;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mAccountAL:Ljava/util/ArrayList;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mAccountAL:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_2

    .line 387
    :cond_0
    iget-object v10, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->view:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 388
    sget-object v10, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->list:Landroid/widget/ListView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ListView;->setVisibility(I)V

    .line 389
    iget-object v10, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->view:Landroid/view/View;

    const v11, 0x7f0b01cc

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 390
    .local v1, admintitle:Landroid/widget/TextView;
    const v10, 0x7f091456

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(I)V

    .line 391
    iget-object v10, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->view:Landroid/view/View;

    const v11, 0x7f0b01cd

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 392
    .local v0, admindescription:Landroid/widget/TextView;
    const v10, 0x7f09144d

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(I)V

    .line 393
    iget-object v10, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->view:Landroid/view/View;

    invoke-virtual {v10, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 400
    .end local v0           #admindescription:Landroid/widget/TextView;
    .end local v1           #admintitle:Landroid/widget/TextView;
    :goto_0
    new-instance v2, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement$MemberAdapter;

    invoke-virtual {p0}, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mAccountAL:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mEasysetupAccount:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-direct {v2, v10, v11, v12, v13}, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement$MemberAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 401
    .local v2, adpt:Lcom/android/settings/accountmanagement/HomeSyncAccountManagement$MemberAdapter;
    sget-object v10, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->list:Landroid/widget/ListView;

    invoke-virtual {v10, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 423
    .end local v2           #adpt:Lcom/android/settings/accountmanagement/HomeSyncAccountManagement$MemberAdapter;
    .end local v3           #emptyTextVeiwOnClickListener:Landroid/view/View$OnClickListener;
    :cond_1
    :goto_1
    return-void

    .line 397
    .restart local v3       #emptyTextVeiwOnClickListener:Landroid/view/View$OnClickListener;
    :cond_2
    iget-object v10, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->view:Landroid/view/View;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 398
    sget-object v10, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->list:Landroid/widget/ListView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .line 403
    .end local v3           #emptyTextVeiwOnClickListener:Landroid/view/View$OnClickListener;
    :cond_3
    iget-object v10, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mAdimAccountid:Ljava/lang/String;

    if-nez v10, :cond_1

    .line 404
    sget-object v10, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->rootView:Landroid/view/View;

    const v11, 0x7f0b01c7

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 405
    .local v6, headerAdmin:Landroid/widget/TextView;
    const v10, 0x7f091451

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(I)V

    .line 406
    sget-object v10, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->rootView:Landroid/view/View;

    const v11, 0x7f0b01c8

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 407
    .local v8, layout:Landroid/view/View;
    const/16 v10, 0x8

    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    .line 408
    const v10, 0x7f0b01cf

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 409
    .local v9, separator:Landroid/view/View;
    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 410
    sget-object v10, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->rootView:Landroid/view/View;

    const v11, 0x7f0b01c9

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 411
    .local v7, headerGuest:Landroid/widget/TextView;
    const/16 v10, 0x8

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 412
    sget-object v10, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->list:Landroid/widget/ListView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ListView;->setVisibility(I)V

    .line 413
    iget-object v10, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->view:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 414
    iget-object v10, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->view:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 415
    iget-object v10, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->view:Landroid/view/View;

    const v11, 0x7f0b01cc

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 416
    .local v5, guesttitle:Landroid/widget/TextView;
    const v10, 0x7f091457

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(I)V

    .line 417
    iget-object v10, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->view:Landroid/view/View;

    const v11, 0x7f0b01cd

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 418
    .local v4, guestdescription:Landroid/widget/TextView;
    const v10, 0x7f091450

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(I)V

    .line 419
    invoke-virtual {p0}, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 420
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->isAdmin:Z

    goto/16 :goto_1
.end method

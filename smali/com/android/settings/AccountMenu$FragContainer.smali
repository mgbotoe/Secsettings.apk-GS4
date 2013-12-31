.class Lcom/android/settings/AccountMenu$FragContainer;
.super Ljava/lang/Object;
.source "AccountMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AccountMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FragContainer"
.end annotation


# instance fields
.field mBreadCrumbShortTitle:Ljava/lang/String;

.field mBreadCrumbShortTitleRes:I

.field mBreadCrumbTitle:Ljava/lang/String;

.field mBreadCrumbTitleRes:I

.field mExtras:Landroid/os/Bundle;

.field mFragement:Landroid/app/Fragment;

.field mFragmentName:Ljava/lang/String;

.field mId:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings/AccountMenu;


# direct methods
.method constructor <init>(Lcom/android/settings/AccountMenu;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 319
    iput-object p1, p0, Lcom/android/settings/AccountMenu$FragContainer;->this$0:Lcom/android/settings/AccountMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 320
    new-instance v0, Landroid/app/Fragment;

    invoke-direct {v0}, Landroid/app/Fragment;-><init>()V

    iput-object v0, p0, Lcom/android/settings/AccountMenu$FragContainer;->mFragement:Landroid/app/Fragment;

    .line 321
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/settings/AccountMenu$FragContainer;->mExtras:Landroid/os/Bundle;

    .line 322
    iput-object v1, p0, Lcom/android/settings/AccountMenu$FragContainer;->mId:Ljava/lang/String;

    .line 323
    iput-object v1, p0, Lcom/android/settings/AccountMenu$FragContainer;->mFragmentName:Ljava/lang/String;

    .line 324
    iput-object v1, p0, Lcom/android/settings/AccountMenu$FragContainer;->mBreadCrumbTitle:Ljava/lang/String;

    .line 325
    iput-object v1, p0, Lcom/android/settings/AccountMenu$FragContainer;->mBreadCrumbShortTitle:Ljava/lang/String;

    .line 326
    iput v2, p0, Lcom/android/settings/AccountMenu$FragContainer;->mBreadCrumbTitleRes:I

    .line 327
    iput v2, p0, Lcom/android/settings/AccountMenu$FragContainer;->mBreadCrumbShortTitleRes:I

    .line 328
    return-void
.end method


# virtual methods
.method public getBreadCrumbTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/settings/AccountMenu$FragContainer;->mBreadCrumbTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getBreadCrumbTitleRes()I
    .locals 1

    .prologue
    .line 371
    iget v0, p0, Lcom/android/settings/AccountMenu$FragContainer;->mBreadCrumbTitleRes:I

    return v0
.end method

.method public getExtraBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/settings/AccountMenu$FragContainer;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getFragement()Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/settings/AccountMenu$FragContainer;->mFragement:Landroid/app/Fragment;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/settings/AccountMenu$FragContainer;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetFragmentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/settings/AccountMenu$FragContainer;->mFragmentName:Ljava/lang/String;

    return-object v0
.end method

.method public setBreadCrumbShortTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 359
    iput-object p1, p0, Lcom/android/settings/AccountMenu$FragContainer;->mBreadCrumbShortTitle:Ljava/lang/String;

    .line 360
    return-void
.end method

.method public setBreadCrumbShortTitleRes(I)V
    .locals 0
    .parameter "resId"

    .prologue
    .line 375
    iput p1, p0, Lcom/android/settings/AccountMenu$FragContainer;->mBreadCrumbShortTitleRes:I

    .line 376
    return-void
.end method

.method public setBreadCrumbTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 351
    iput-object p1, p0, Lcom/android/settings/AccountMenu$FragContainer;->mBreadCrumbTitle:Ljava/lang/String;

    .line 352
    return-void
.end method

.method public setBreadCrumbTitleRes(I)V
    .locals 0
    .parameter "resId"

    .prologue
    .line 367
    iput p1, p0, Lcom/android/settings/AccountMenu$FragContainer;->mBreadCrumbTitleRes:I

    .line 368
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 347
    iput-object p1, p0, Lcom/android/settings/AccountMenu$FragContainer;->mId:Ljava/lang/String;

    .line 348
    return-void
.end method

.method public setTagetFragmentName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 343
    iput-object p1, p0, Lcom/android/settings/AccountMenu$FragContainer;->mFragmentName:Ljava/lang/String;

    .line 344
    return-void
.end method

.class Lcom/android/settings/AccountMenu$EmptyDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "AccountMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AccountMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmptyDrawable"
.end annotation


# instance fields
.field private final mHeight:I

.field private final mWidth:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 512
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 513
    iput p1, p0, Lcom/android/settings/AccountMenu$EmptyDrawable;->mWidth:I

    .line 514
    iput p2, p0, Lcom/android/settings/AccountMenu$EmptyDrawable;->mHeight:I

    .line 515
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 539
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 524
    iget v0, p0, Lcom/android/settings/AccountMenu$EmptyDrawable;->mHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 519
    iget v0, p0, Lcom/android/settings/AccountMenu$EmptyDrawable;->mWidth:I

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 534
    iget v0, p0, Lcom/android/settings/AccountMenu$EmptyDrawable;->mHeight:I

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 529
    iget v0, p0, Lcom/android/settings/AccountMenu$EmptyDrawable;->mWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 551
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 543
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "cf"

    .prologue
    .line 547
    return-void
.end method

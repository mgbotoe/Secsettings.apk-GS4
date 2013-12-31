.class public Lcom/android/settings/deviceinfo/StorageItemPreference;
.super Landroid/preference/Preference;
.source "StorageItemPreference.java"


# instance fields
.field public final color:I

.field private mContext:Landroid/content/Context;

.field private summaryResID:I

.field public final userHandle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .parameter "context"
    .parameter "titleRes"
    .parameter "colorRes"

    .prologue
    .line 36
    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/16 v1, -0x2710

    invoke-direct {p0, p1, v0, p3, v1}, Lcom/android/settings/deviceinfo/StorageItemPreference;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .locals 6
    .parameter "context"
    .parameter "titleRes"
    .parameter "summaryRes"
    .parameter "colorRes"

    .prologue
    .line 41
    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/16 v5, -0x2710

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/deviceinfo/StorageItemPreference;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;III)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;II)V
    .locals 4
    .parameter "context"
    .parameter "title"
    .parameter "colorRes"
    .parameter "userHandle"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 32
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->summaryResID:I

    .line 72
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->mContext:Landroid/content/Context;

    .line 74
    if-eqz p3, :cond_0

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->color:I

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 78
    .local v1, res:Landroid/content/res/Resources;
    const v3, 0x7f0f0019

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 79
    .local v2, width:I
    const v3, 0x7f0f001a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 80
    .local v0, height:I
    iget v3, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->color:I

    invoke-static {v2, v0, v3}, Lcom/android/settings/deviceinfo/StorageItemPreference;->createRectShape(III)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 85
    .end local v0           #height:I
    .end local v1           #res:Landroid/content/res/Resources;
    .end local v2           #width:I
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 87
    const v3, 0x7f090610

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setSummary(I)V

    .line 89
    iput p4, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->userHandle:I

    .line 90
    return-void

    .line 82
    :cond_0
    const v3, -0xff01

    iput v3, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->color:I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;III)V
    .locals 4
    .parameter "context"
    .parameter "title"
    .parameter "summaryRes"
    .parameter "colorRes"
    .parameter "userHandle"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 32
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->summaryResID:I

    .line 48
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->mContext:Landroid/content/Context;

    .line 49
    iput p3, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->summaryResID:I

    .line 51
    if-eqz p4, :cond_0

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->color:I

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 55
    .local v1, res:Landroid/content/res/Resources;
    const v3, 0x7f0f0019

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 56
    .local v2, width:I
    const v3, 0x7f0f001a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 57
    .local v0, height:I
    iget v3, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->color:I

    invoke-static {v2, v0, v3}, Lcom/android/settings/deviceinfo/StorageItemPreference;->createRectShape(III)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 62
    .end local v0           #height:I
    .end local v1           #res:Landroid/content/res/Resources;
    .end local v2           #width:I
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 63
    const v3, 0x7f090610

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setSummary(I)V

    .line 65
    iput p5, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->userHandle:I

    .line 66
    return-void

    .line 59
    :cond_0
    const v3, -0xff01

    iput v3, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->color:I

    goto :goto_0
.end method

.method private static createRectShape(III)Landroid/graphics/drawable/ShapeDrawable;
    .locals 2
    .parameter "width"
    .parameter "height"
    .parameter "color"

    .prologue
    .line 113
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 114
    .local v0, shape:Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    .line 115
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    .line 116
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 117
    return-object v0
.end method


# virtual methods
.method public setSummary(I)V
    .locals 4
    .parameter "summaryResId"

    .prologue
    .line 105
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, text:Ljava/lang/String;
    iget v1, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->summaryResID:I

    if-eqz v1, :cond_0

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->summaryResID:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    :cond_0
    invoke-super {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 110
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 4
    .parameter "summary"

    .prologue
    .line 95
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, text:Ljava/lang/String;
    iget v1, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->summaryResID:I

    if-eqz v1, :cond_0

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->summaryResID:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    :cond_0
    invoke-super {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 100
    return-void
.end method

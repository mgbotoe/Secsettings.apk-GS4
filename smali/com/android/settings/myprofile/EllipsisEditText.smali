.class public Lcom/android/settings/myprofile/EllipsisEditText;
.super Landroid/widget/EditText;
.source "EllipsisEditText.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private mEditTextWidth:F

.field private mEllipsizeCallback:Landroid/text/TextUtils$EllipsizeCallback;

.field private mEllipsized:Z

.field private mMaxTextSize:F

.field private mMinTextSize:F

.field private mScaleTextSize:F

.field private mScaledDensity:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mEllipsized:Z

    .line 30
    const/high16 v0, 0x4254

    iput v0, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mMaxTextSize:F

    .line 35
    const/high16 v0, 0x4120

    iput v0, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mMinTextSize:F

    .line 40
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mScaleTextSize:F

    .line 45
    const/high16 v0, 0x3fc0

    iput v0, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mScaledDensity:F

    .line 55
    new-instance v0, Lcom/android/settings/myprofile/EllipsisEditText$1;

    invoke-direct {v0, p0}, Lcom/android/settings/myprofile/EllipsisEditText$1;-><init>(Lcom/android/settings/myprofile/EllipsisEditText;)V

    iput-object v0, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mEllipsizeCallback:Landroid/text/TextUtils$EllipsizeCallback;

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/myprofile/EllipsisEditText;->getInputType()I

    move-result v0

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/settings/myprofile/EllipsisEditText;->setInputType(I)V

    .line 68
    invoke-direct {p0}, Lcom/android/settings/myprofile/EllipsisEditText;->initWidget()V

    .line 77
    invoke-direct {p0, p1}, Lcom/android/settings/myprofile/EllipsisEditText;->initWidth(Landroid/content/Context;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mEllipsized:Z

    .line 30
    const/high16 v0, 0x4254

    iput v0, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mMaxTextSize:F

    .line 35
    const/high16 v0, 0x4120

    iput v0, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mMinTextSize:F

    .line 40
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mScaleTextSize:F

    .line 45
    const/high16 v0, 0x3fc0

    iput v0, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mScaledDensity:F

    .line 55
    new-instance v0, Lcom/android/settings/myprofile/EllipsisEditText$1;

    invoke-direct {v0, p0}, Lcom/android/settings/myprofile/EllipsisEditText$1;-><init>(Lcom/android/settings/myprofile/EllipsisEditText;)V

    iput-object v0, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mEllipsizeCallback:Landroid/text/TextUtils$EllipsizeCallback;

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/myprofile/EllipsisEditText;->getInputType()I

    move-result v0

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/settings/myprofile/EllipsisEditText;->setInputType(I)V

    .line 68
    invoke-direct {p0}, Lcom/android/settings/myprofile/EllipsisEditText;->initWidget()V

    .line 87
    invoke-direct {p0, p1}, Lcom/android/settings/myprofile/EllipsisEditText;->initWidth(Landroid/content/Context;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 96
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mEllipsized:Z

    .line 30
    const/high16 v0, 0x4254

    iput v0, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mMaxTextSize:F

    .line 35
    const/high16 v0, 0x4120

    iput v0, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mMinTextSize:F

    .line 40
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mScaleTextSize:F

    .line 45
    const/high16 v0, 0x3fc0

    iput v0, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mScaledDensity:F

    .line 55
    new-instance v0, Lcom/android/settings/myprofile/EllipsisEditText$1;

    invoke-direct {v0, p0}, Lcom/android/settings/myprofile/EllipsisEditText$1;-><init>(Lcom/android/settings/myprofile/EllipsisEditText;)V

    iput-object v0, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mEllipsizeCallback:Landroid/text/TextUtils$EllipsizeCallback;

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/myprofile/EllipsisEditText;->getInputType()I

    move-result v0

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/settings/myprofile/EllipsisEditText;->setInputType(I)V

    .line 68
    invoke-direct {p0}, Lcom/android/settings/myprofile/EllipsisEditText;->initWidget()V

    .line 98
    invoke-direct {p0, p1}, Lcom/android/settings/myprofile/EllipsisEditText;->initWidth(Landroid/content/Context;)V

    .line 99
    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/myprofile/EllipsisEditText;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mEllipsized:Z

    return p1
.end method

.method private initWidget()V
    .locals 0

    .prologue
    .line 106
    invoke-virtual {p0, p0}, Lcom/android/settings/myprofile/EllipsisEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 107
    return-void
.end method

.method private initWidth(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f00e8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 115
    .local v1, marginLeft:F
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f00e7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 117
    .local v2, marginRight:F
    const-string v6, "window"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 118
    .local v5, wm:Landroid/view/WindowManager;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 119
    .local v0, display:Landroid/view/Display;
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 120
    .local v4, size:Landroid/graphics/Point;
    invoke-virtual {v0, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 123
    iget v6, v4, Landroid/graphics/Point;->x:I

    iget v7, v4, Landroid/graphics/Point;->y:I

    if-ge v6, v7, :cond_0

    iget v6, v4, Landroid/graphics/Point;->x:I

    int-to-float v3, v6

    .line 125
    .local v3, screenWidth:F
    :goto_0
    sub-float v6, v3, v1

    sub-float/2addr v6, v2

    iput v6, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mEditTextWidth:F

    .line 126
    const-string v6, "EllipsisEditText"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "marginLeft : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", marginRight : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", size.x : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Landroid/graphics/Point;->x:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", size.y : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", screenWidth : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mEditTextWidth : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mEditTextWidth:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return-void

    .line 123
    .end local v3           #screenWidth:F
    :cond_0
    iget v6, v4, Landroid/graphics/Point;->y:I

    int-to-float v3, v6

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 209
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 219
    return-void
.end method

.method public convertPixelsToDp(F)F
    .locals 2
    .parameter "px"

    .prologue
    .line 194
    iget v1, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mScaledDensity:F

    div-float v0, p1, v1

    .line 195
    .local v0, dp:F
    return v0
.end method

.method public fontChange()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 268
    invoke-virtual {p0}, Lcom/android/settings/myprofile/EllipsisEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    .line 269
    .local v2, textPaint:Landroid/text/TextPaint;
    invoke-virtual {p0}, Lcom/android/settings/myprofile/EllipsisEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 270
    .local v1, s:Ljava/lang/CharSequence;
    iget v5, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mEditTextWidth:F

    invoke-virtual {p0}, Lcom/android/settings/myprofile/EllipsisEditText;->getPaddingLeft()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Lcom/android/settings/myprofile/EllipsisEditText;->getPaddingRight()I

    move-result v6

    int-to-float v6, v6

    sub-float v4, v5, v6

    .line 271
    .local v4, textWidth:F
    const/4 v0, 0x0

    .line 272
    .local v0, measureWidth:F
    invoke-virtual {p0}, Lcom/android/settings/myprofile/EllipsisEditText;->getTextSize()F

    move-result v3

    .line 273
    .local v3, textSize:F
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v2, v1, v7, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    .line 274
    :goto_0
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v0, v5

    add-float/2addr v5, v0

    cmpg-float v5, v5, v4

    if-gez v5, :cond_0

    iget v5, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mScaleTextSize:F

    add-float/2addr v5, v3

    iget v6, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mMaxTextSize:F

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_0

    .line 275
    iget v5, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mScaleTextSize:F

    add-float/2addr v3, v5

    .line 276
    invoke-virtual {p0, v3}, Lcom/android/settings/myprofile/EllipsisEditText;->setTextSize(F)V

    .line 277
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v2, v1, v7, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    goto :goto_0

    .line 280
    :cond_0
    return-void
.end method

.method public getMaxTextSize()F
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mMaxTextSize:F

    return v0
.end method

.method public getTextSize()F
    .locals 1

    .prologue
    .line 200
    invoke-super {p0}, Landroid/widget/EditText;->getTextSize()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/myprofile/EllipsisEditText;->convertPixelsToDp(F)F

    move-result v0

    return v0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 10
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/4 v9, 0x0

    .line 229
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 230
    iget v0, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mEditTextWidth:F

    invoke-virtual {p0}, Lcom/android/settings/myprofile/EllipsisEditText;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v0, v3

    invoke-virtual {p0}, Lcom/android/settings/myprofile/EllipsisEditText;->getPaddingRight()I

    move-result v3

    int-to-float v3, v3

    sub-float v2, v0, v3

    .line 231
    .local v2, textWidth:F
    const/4 v0, 0x0

    cmpg-float v0, v2, v0

    if-gtz v0, :cond_1

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    const/4 v6, 0x0

    .line 234
    .local v6, measureWidth:F
    invoke-virtual {p0}, Lcom/android/settings/myprofile/EllipsisEditText;->getTextSize()F

    move-result v7

    .line 235
    .local v7, textSize:F
    invoke-virtual {p0}, Lcom/android/settings/myprofile/EllipsisEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    .line 236
    .local v1, textPaint:Landroid/text/TextPaint;
    invoke-virtual {p0}, Lcom/android/settings/myprofile/EllipsisEditText;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v3

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mEllipsizeCallback:Landroid/text/TextUtils$EllipsizeCallback;

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 237
    .local v8, txtElipsized:Ljava/lang/CharSequence;
    if-ge p3, p4, :cond_3

    .line 239
    iget-boolean v0, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mEllipsized:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mScaleTextSize:F

    sub-float v0, v7, v0

    iget v3, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mMinTextSize:F

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_0

    .line 242
    :cond_2
    iget v0, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mScaleTextSize:F

    sub-float/2addr v7, v0

    .line 243
    invoke-virtual {p0, v7}, Lcom/android/settings/myprofile/EllipsisEditText;->setTextSize(F)V

    .line 244
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {v1, p1, v9, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v6

    .line 245
    cmpl-float v0, v6, v2

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mScaleTextSize:F

    sub-float v0, v7, v0

    iget v3, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mMinTextSize:F

    cmpl-float v0, v0, v3

    if-gez v0, :cond_2

    goto :goto_0

    .line 247
    :cond_3
    if-le p3, p4, :cond_0

    .line 249
    iget v0, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mScaleTextSize:F

    add-float/2addr v0, v7

    iget v3, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mMaxTextSize:F

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_0

    .line 252
    :cond_4
    iget v0, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mScaleTextSize:F

    add-float/2addr v7, v0

    .line 253
    invoke-virtual {p0, v7}, Lcom/android/settings/myprofile/EllipsisEditText;->setTextSize(F)V

    .line 254
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {v1, p1, v9, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v6

    .line 255
    cmpl-float v0, v6, v2

    if-lez v0, :cond_5

    .line 256
    iget v0, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mScaleTextSize:F

    sub-float/2addr v7, v0

    .line 257
    invoke-virtual {p0, v7}, Lcom/android/settings/myprofile/EllipsisEditText;->setTextSize(F)V

    .line 258
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {v1, p1, v9, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v6

    .line 259
    goto :goto_0

    .line 261
    :cond_5
    cmpg-float v0, v6, v2

    if-gez v0, :cond_0

    iget v0, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mScaleTextSize:F

    add-float/2addr v0, v7

    iget v3, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mMaxTextSize:F

    cmpg-float v0, v0, v3

    if-lez v0, :cond_4

    goto :goto_0
.end method

.method public setMaxTextSize(F)V
    .locals 1
    .parameter "maxTextSize"

    .prologue
    .line 161
    iget v0, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mScaledDensity:F

    div-float/2addr p1, v0

    .line 162
    iput p1, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mMaxTextSize:F

    .line 163
    return-void
.end method

.method public setScaledDensity(F)V
    .locals 0
    .parameter "scaledDensity"

    .prologue
    .line 141
    iput p1, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mScaledDensity:F

    .line 142
    return-void
.end method

.method public setTextSize(F)V
    .locals 1
    .parameter "size"

    .prologue
    .line 153
    const/4 v0, 0x1

    invoke-super {p0, v0, p1}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 154
    return-void
.end method

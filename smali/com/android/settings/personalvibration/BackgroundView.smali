.class public Lcom/android/settings/personalvibration/BackgroundView;
.super Landroid/view/View;
.source "BackgroundView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/personalvibration/BackgroundView$UpdateTimeTask;,
        Lcom/android/settings/personalvibration/BackgroundView$Stage;,
        Lcom/android/settings/personalvibration/BackgroundView$floatValue;
    }
.end annotation


# static fields
.field static isTimerRun:Z

.field static timer:Ljava/util/Timer;


# instance fields
.field private final ADJUST_ANGLE:F

.field bm01:Landroid/graphics/Bitmap;

.field bm02:Landroid/graphics/Bitmap;

.field downtime:J

.field handler:Landroid/os/Handler;

.field private mBG:Landroid/graphics/RectF;

.field private mBigOval:Landroid/graphics/RectF;

.field mHandler:Landroid/os/Handler;

.field private mPaints:[Landroid/graphics/Paint;

.field private mPauseSweep:F

.field mSizeChanged:Z

.field private mSmallOval:Landroid/graphics/RectF;

.field private mStart:F

.field private mSweep:F

.field patternString:Ljava/lang/String;

.field pressedValue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/personalvibration/BackgroundView$floatValue;",
            ">;"
        }
    .end annotation
.end field

.field stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

.field startTime:J

.field uptime:J

.field vib:Landroid/os/SystemVibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/high16 v2, -0x3d4c

    const-wide/16 v0, 0x0

    .line 82
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 33
    iput v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->ADJUST_ANGLE:F

    .line 37
    iput v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->mStart:F

    .line 41
    iput-wide v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->downtime:J

    .line 42
    iput-wide v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->uptime:J

    .line 43
    iput-wide v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->startTime:J

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSizeChanged:Z

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->patternString:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/high16 v2, -0x3d4c

    const-wide/16 v0, 0x0

    .line 72
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    iput v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->ADJUST_ANGLE:F

    .line 37
    iput v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->mStart:F

    .line 41
    iput-wide v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->downtime:J

    .line 42
    iput-wide v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->uptime:J

    .line 43
    iput-wide v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->startTime:J

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSizeChanged:Z

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->patternString:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/high16 v2, -0x3d4c

    const-wide/16 v0, 0x0

    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    iput v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->ADJUST_ANGLE:F

    .line 37
    iput v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->mStart:F

    .line 41
    iput-wide v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->downtime:J

    .line 42
    iput-wide v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->uptime:J

    .line 43
    iput-wide v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->startTime:J

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSizeChanged:Z

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->patternString:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    .line 79
    return-void
.end method

.method private drawArcs(Landroid/graphics/Canvas;Landroid/graphics/RectF;ZLandroid/graphics/Paint;)V
    .locals 7
    .parameter "canvas"
    .parameter "oval"
    .parameter "useCenter"
    .parameter "paint"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->bm01:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->mBG:Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 176
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 177
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;

    iget v0, v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->up:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;

    iget v0, v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->down:F

    const/high16 v1, -0x3d4c

    add-float v2, v0, v1

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;

    iget v1, v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->up:F

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;

    iget v0, v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->down:F

    sub-float v3, v1, v0

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v1, 0x2

    aget-object v5, v0, v1

    move-object v0, p1

    move-object v1, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 177
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;

    iget v0, v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->down:F

    const/high16 v1, -0x3d4c

    add-float v2, v0, v1

    iget v1, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;

    iget v0, v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->down:F

    sub-float v3, v1, v0

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v1, 0x2

    aget-object v5, v0, v1

    move-object v0, p1

    move-object v1, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 186
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->bm02:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->mBG:Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    sget-object v1, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Play:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-ne v0, v1, :cond_3

    .line 190
    const/4 v6, 0x0

    :goto_2
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_3

    .line 191
    iget v1, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;

    iget v0, v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->up:F

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_2

    .line 192
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;

    iget v0, v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->down:F

    const/high16 v1, -0x3d4c

    add-float v2, v0, v1

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;

    iget v1, v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->up:F

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;

    iget v0, v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->down:F

    sub-float v3, v1, v0

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v1, 0x5

    aget-object v5, v0, v1

    move-object v0, p1

    move-object v1, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 190
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 196
    :cond_2
    iget v1, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;

    iget v0, v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->down:F

    cmpl-float v0, v1, v0

    if-lez v0, :cond_3

    .line 197
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;

    iget v0, v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->down:F

    const/high16 v1, -0x3d4c

    add-float v2, v0, v1

    iget v1, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;

    iget v0, v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->down:F

    sub-float v3, v1, v0

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v1, 0x5

    aget-object v5, v0, v1

    move-object v0, p1

    move-object v1, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_3

    .line 206
    .end local v6           #i:I
    :cond_3
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    sget-object v1, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Recording:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    sget-object v1, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Pause:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-ne v0, v1, :cond_6

    .line 208
    :cond_4
    iget-object v1, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSmallOval:Landroid/graphics/RectF;

    iget v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mStart:F

    iget v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    add-float/2addr v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v5, 0x3

    aget-object v5, v0, v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 209
    iget-object v1, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSmallOval:Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->mStart:F

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v5, 0x6

    aget-object v5, v0, v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 216
    :cond_5
    :goto_4
    return-void

    .line 211
    :cond_6
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    sget-object v1, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Play:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-ne v0, v1, :cond_5

    .line 213
    iget-object v1, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSmallOval:Landroid/graphics/RectF;

    iget v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mStart:F

    iget v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    add-float/2addr v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v5, 0x4

    aget-object v5, v0, v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 214
    iget-object v1, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSmallOval:Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->mStart:F

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v5, 0x6

    aget-object v5, v0, v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_4
.end method


# virtual methods
.method public getPatternString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 359
    const-string v0, "PersonalVibration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPatternString is called : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->patternString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->patternString:Ljava/lang/String;

    return-object v0
.end method

.method public getStage()Lcom/android/settings/personalvibration/BackgroundView$Stage;
    .locals 3

    .prologue
    .line 365
    const-string v0, "PersonalVibration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getStage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    return-object v0
.end method

.method init(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/BackgroundView;->getMeasuredHeight()I

    move-result v1

    .line 98
    .local v1, Height:I
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/BackgroundView;->getMeasuredWidth()I

    move-result v3

    .line 99
    .local v3, Width:I
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 100
    .local v6, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/BackgroundView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 101
    iget v8, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v4, v8

    .line 102
    .local v4, dpi:F
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/BackgroundView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v7, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 103
    .local v7, width:I
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/BackgroundView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v5, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 104
    .local v5, height:I
    const-string v8, "PersonalVibration"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "canvas height : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", width : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const/4 v8, 0x7

    new-array v8, v8, [Landroid/graphics/Paint;

    iput-object v8, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    .line 107
    iget-object v8, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x0

    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    aput-object v10, v8, v9

    .line 108
    iget-object v8, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 109
    iget-object v8, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 110
    iget-object v8, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    iget-object v8, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/16 v9, 0x32

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 112
    iget-object v8, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    int-to-double v9, v1

    const-wide/high16 v11, 0x4029

    div-double/2addr v9, v11

    double-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 114
    iget-object v8, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x1

    new-instance v10, Landroid/graphics/Paint;

    iget-object v11, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-direct {v10, v11}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    aput-object v10, v8, v9

    .line 115
    iget-object v8, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 116
    iget-object v8, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    const/16 v9, 0x39

    const/16 v10, 0xab

    const/16 v11, 0xda

    invoke-static {v9, v10, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 117
    iget-object v8, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    const/16 v9, 0x32

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 119
    iget-object v8, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x2

    new-instance v10, Landroid/graphics/Paint;

    iget-object v11, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-direct {v10, v11}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    aput-object v10, v8, v9

    .line 120
    iget-object v8, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x2

    aget-object v8, v8, v9

    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 121
    iget-object v8, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x2

    aget-object v8, v8, v9

    invoke-virtual {p0}, Lcom/android/settings/personalvibration/BackgroundView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d0003

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 123
    iget-object v8, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x3

    new-instance v10, Landroid/graphics/Paint;

    iget-object v11, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-direct {v10, v11}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    aput-object v10, v8, v9

    .line 124
    iget-object v8, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x3

    aget-object v8, v8, v9

    sget-object v9, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 125
    iget-object v8, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x3

    aget-object v8, v8, v9

    const/high16 v9, 0x4040

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 126
    iget-object v8, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x3

    aget-object v8, v8, v9

    invoke-virtual {p0}, Lcom/android/settings/personalvibration/BackgroundView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d0004

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 128
    iget-object v8, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x4

    new-instance v10, Landroid/graphics/Paint;

    iget-object v11, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v12, 0x3

    aget-object v11, v11, v12

    invoke-direct {v10, v11}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    aput-object v10, v8, v9

    .line 129
    iget-object v8, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x4

    aget-object v8, v8, v9

    const/16 v9, 0x39

    const/16 v10, 0xab

    const/16 v11, 0xda

    invoke-static {v9, v10, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 131
    iget-object v8, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x5

    new-instance v10, Landroid/graphics/Paint;

    iget-object v11, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-direct {v10, v11}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    aput-object v10, v8, v9

    .line 132
    iget-object v8, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x5

    aget-object v8, v8, v9

    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 133
    iget-object v8, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x5

    aget-object v8, v8, v9

    const/16 v9, 0x39

    const/16 v10, 0xab

    const/16 v11, 0xda

    invoke-static {v9, v10, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 135
    iget-object v8, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x6

    new-instance v10, Landroid/graphics/Paint;

    iget-object v11, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-direct {v10, v11}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    aput-object v10, v8, v9

    .line 136
    iget-object v8, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x6

    aget-object v8, v8, v9

    sget-object v9, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 137
    iget-object v8, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x6

    aget-object v8, v8, v9

    const/high16 v9, 0x4040

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 138
    iget-object v8, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x6

    aget-object v8, v8, v9

    invoke-virtual {p0}, Lcom/android/settings/personalvibration/BackgroundView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d0005

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 142
    const/4 v8, 0x0

    invoke-static {v8}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 143
    mul-int/lit8 v8, v1, 0xb

    div-int/lit16 v8, v8, 0x90

    int-to-float v0, v8

    .line 144
    .local v0, BigOvalOffset:F
    div-int/lit8 v8, v1, 0x1d

    int-to-float v2, v8

    .line 153
    .local v2, SmallOvalOffset:F
    :goto_0
    new-instance v8, Landroid/graphics/RectF;

    int-to-float v9, v3

    sub-float/2addr v9, v0

    int-to-float v10, v1

    sub-float/2addr v10, v0

    invoke-direct {v8, v0, v0, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v8, p0, Lcom/android/settings/personalvibration/BackgroundView;->mBigOval:Landroid/graphics/RectF;

    .line 154
    new-instance v8, Landroid/graphics/RectF;

    int-to-float v9, v3

    sub-float/2addr v9, v2

    int-to-float v10, v1

    sub-float/2addr v10, v2

    invoke-direct {v8, v2, v2, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v8, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSmallOval:Landroid/graphics/RectF;

    .line 157
    new-instance v8, Landroid/graphics/RectF;

    const/4 v9, 0x0

    const/4 v10, 0x0

    int-to-float v11, v1

    int-to-float v12, v3

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v8, p0, Lcom/android/settings/personalvibration/BackgroundView;->mBG:Landroid/graphics/RectF;

    .line 160
    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    iput-object v8, p0, Lcom/android/settings/personalvibration/BackgroundView;->handler:Landroid/os/Handler;

    .line 162
    const/4 v8, 0x0

    sput-boolean v8, Lcom/android/settings/personalvibration/BackgroundView;->isTimerRun:Z

    .line 164
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/BackgroundView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f02052a

    invoke-static {v8, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/personalvibration/BackgroundView;->bm01:Landroid/graphics/Bitmap;

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/BackgroundView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f02052f

    invoke-static {v8, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/personalvibration/BackgroundView;->bm02:Landroid/graphics/Bitmap;

    .line 167
    new-instance v8, Landroid/os/SystemVibrator;

    invoke-direct {v8}, Landroid/os/SystemVibrator;-><init>()V

    iput-object v8, p0, Lcom/android/settings/personalvibration/BackgroundView;->vib:Landroid/os/SystemVibrator;

    .line 168
    sget-object v8, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Standby:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    iput-object v8, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    .line 170
    return-void

    .line 145
    .end local v0           #BigOvalOffset:F
    .end local v2           #SmallOvalOffset:F
    :cond_0
    const/high16 v8, 0x4370

    cmpl-float v8, v4, v8

    if-nez v8, :cond_5

    const/16 v8, 0x21c

    if-ne v7, v8, :cond_1

    const/16 v8, 0x3c0

    if-eq v5, v8, :cond_4

    :cond_1
    const/16 v8, 0x3c0

    if-ne v7, v8, :cond_2

    const/16 v8, 0x21c

    if-eq v5, v8, :cond_4

    :cond_2
    const/16 v8, 0x1e0

    if-ne v7, v8, :cond_3

    const/16 v8, 0x320

    if-eq v5, v8, :cond_4

    :cond_3
    const/16 v8, 0x320

    if-ne v7, v8, :cond_5

    const/16 v8, 0x1e0

    if-ne v5, v8, :cond_5

    .line 147
    :cond_4
    mul-int/lit8 v8, v1, 0xb

    div-int/lit16 v8, v8, 0x90

    int-to-float v8, v8

    const/high16 v9, 0x3f80

    sub-float v0, v8, v9

    .line 148
    .restart local v0       #BigOvalOffset:F
    div-int/lit8 v8, v1, 0x1d

    int-to-float v8, v8

    const/high16 v9, 0x3f80

    sub-float v2, v8, v9

    .restart local v2       #SmallOvalOffset:F
    goto/16 :goto_0

    .line 150
    .end local v0           #BigOvalOffset:F
    .end local v2           #SmallOvalOffset:F
    :cond_5
    mul-int/lit8 v8, v1, 0xb

    div-int/lit16 v8, v8, 0x90

    int-to-float v8, v8

    const/high16 v9, 0x4020

    sub-float v0, v8, v9

    .line 151
    .restart local v0       #BigOvalOffset:F
    div-int/lit8 v8, v1, 0x1d

    int-to-float v8, v8

    const/high16 v9, 0x4020

    sub-float v2, v8, v9

    .restart local v2       #SmallOvalOffset:F
    goto/16 :goto_0
.end method

.method public isTimerRunning()Z
    .locals 1

    .prologue
    .line 327
    sget-boolean v0, Lcom/android/settings/personalvibration/BackgroundView;->isTimerRun:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 87
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 89
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->bm01:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->bm01:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->bm02:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->bm02:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 94
    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const v7, 0x3fe66666

    const-wide/high16 v5, 0x4024

    const/4 v4, 0x2

    const/high16 v3, 0x43b4

    const/4 v2, 0x0

    .line 220
    iget-boolean v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSizeChanged:Z

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {p0, p1}, Lcom/android/settings/personalvibration/BackgroundView;->init(Landroid/graphics/Canvas;)V

    .line 222
    iput-boolean v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSizeChanged:Z

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mBigOval:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    aget-object v1, v1, v4

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/settings/personalvibration/BackgroundView;->drawArcs(Landroid/graphics/Canvas;Landroid/graphics/RectF;ZLandroid/graphics/Paint;)V

    .line 227
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    sget-object v1, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Recording:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-ne v0, v1, :cond_2

    .line 228
    iget v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    add-float/2addr v0, v7

    iput v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    .line 229
    iget v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    const/high16 v1, 0x4120

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    div-double/2addr v0, v5

    double-to-float v0, v0

    iput v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    .line 230
    iget v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_1

    .line 231
    iput v3, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    .line 232
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/BackgroundView;->setPauseTimer()V

    .line 233
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mBigOval:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    aget-object v1, v1, v4

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/settings/personalvibration/BackgroundView;->drawArcs(Landroid/graphics/Canvas;Landroid/graphics/RectF;ZLandroid/graphics/Paint;)V

    .line 244
    :cond_1
    :goto_0
    return-void

    .line 235
    :cond_2
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    sget-object v1, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Play:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-ne v0, v1, :cond_1

    .line 236
    iget v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    add-float/2addr v0, v7

    iput v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    .line 237
    iget v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    const/high16 v1, 0x4120

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    div-double/2addr v0, v5

    double-to-float v0, v0

    iput v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    .line 238
    iget v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    iget v1, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPauseSweep:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 239
    iput v3, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    .line 240
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/BackgroundView;->setPauseTimer()V

    .line 241
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mBigOval:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    aget-object v1, v1, v4

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/settings/personalvibration/BackgroundView;->drawArcs(Landroid/graphics/Canvas;Landroid/graphics/RectF;ZLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "event"

    .prologue
    .line 373
    const-string v4, "PersonalVibration"

    const-string v5, "onTouchEvent()"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/BackgroundView;->isTimerRunning()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    sget-object v5, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Recording:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-eq v4, v5, :cond_1

    .line 376
    :cond_0
    const-string v4, "PersonalVibration"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTouchEvent() isTimerRunning() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/personalvibration/BackgroundView;->isTimerRunning()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", stage : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    const/4 v4, 0x0

    .line 428
    :goto_0
    return v4

    .line 382
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 384
    .local v0, action:I
    const-string v4, "PersonalVibration"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTouchEvent(), action : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    packed-switch v0, :pswitch_data_0

    .line 428
    :cond_2
    :goto_1
    :pswitch_0
    const/4 v4, 0x1

    goto :goto_0

    .line 387
    :pswitch_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->downtime:J

    .line 389
    const-string v4, "PersonalVibration"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "button click started : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/settings/personalvibration/BackgroundView;->downtime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->vib:Landroid/os/SystemVibrator;

    const-wide/16 v5, 0x2710

    sget-object v7, Landroid/os/SystemVibrator$MagnitudeType;->CallMagnitude:Landroid/os/SystemVibrator$MagnitudeType;

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/SystemVibrator;->vibrate(JLandroid/os/SystemVibrator$MagnitudeType;)V

    .line 392
    iget-wide v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->uptime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 393
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/settings/personalvibration/BackgroundView;->patternString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/settings/personalvibration/BackgroundView;->downtime:J

    iget-wide v7, p0, Lcom/android/settings/personalvibration/BackgroundView;->startTime:J

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->patternString:Ljava/lang/String;

    .line 399
    :goto_2
    new-instance v2, Lcom/android/settings/personalvibration/BackgroundView$floatValue;

    invoke-direct {v2}, Lcom/android/settings/personalvibration/BackgroundView$floatValue;-><init>()V

    .line 400
    .local v2, temp:Lcom/android/settings/personalvibration/BackgroundView$floatValue;
    iget v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    iput v4, v2, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->down:F

    .line 401
    const/high16 v4, -0x4080

    iput v4, v2, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->up:F

    .line 402
    iget-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 396
    .end local v2           #temp:Lcom/android/settings/personalvibration/BackgroundView$floatValue;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/settings/personalvibration/BackgroundView;->patternString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/settings/personalvibration/BackgroundView;->downtime:J

    iget-wide v7, p0, Lcom/android/settings/personalvibration/BackgroundView;->uptime:J

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->patternString:Ljava/lang/String;

    goto :goto_2

    .line 408
    :pswitch_2
    iget-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .line 409
    .local v1, i:I
    if-ltz v1, :cond_2

    .line 411
    iget-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/personalvibration/BackgroundView$floatValue;

    .line 412
    .local v3, temp2:Lcom/android/settings/personalvibration/BackgroundView$floatValue;
    iget v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    iput v4, v3, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->up:F

    .line 414
    const-string v4, "PersonalVibration"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_UP, temp2.up : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->up:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v4, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 417
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->uptime:J

    .line 419
    const-string v4, "PersonalVibration"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "button clicked ended, clicked time : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/settings/personalvibration/BackgroundView;->uptime:J

    iget-wide v8, p0, Lcom/android/settings/personalvibration/BackgroundView;->downtime:J

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iget-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->vib:Landroid/os/SystemVibrator;

    invoke-virtual {v4}, Landroid/os/SystemVibrator;->cancel()V

    .line 422
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/settings/personalvibration/BackgroundView;->patternString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/settings/personalvibration/BackgroundView;->uptime:J

    iget-wide v7, p0, Lcom/android/settings/personalvibration/BackgroundView;->downtime:J

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->patternString:Ljava/lang/String;

    .line 424
    iget-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->vib:Landroid/os/SystemVibrator;

    invoke-virtual {v4}, Landroid/os/SystemVibrator;->cancel()V

    goto/16 :goto_1

    .line 385
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 354
    iput-object p1, p0, Lcom/android/settings/personalvibration/BackgroundView;->mHandler:Landroid/os/Handler;

    .line 355
    return-void
.end method

.method public setPauseTimer()V
    .locals 3

    .prologue
    .line 298
    sget-boolean v0, Lcom/android/settings/personalvibration/BackgroundView;->isTimerRun:Z

    if-nez v0, :cond_0

    .line 300
    const-string v0, "PersonalVibration"

    const-string v1, "setPauseTimer, timer has already stopped"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :goto_0
    return-void

    .line 303
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/BackgroundView;->validateLastValue()Z

    .line 305
    sget-object v0, Lcom/android/settings/personalvibration/BackgroundView;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 306
    sget-object v0, Lcom/android/settings/personalvibration/BackgroundView;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 307
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/personalvibration/BackgroundView;->timer:Ljava/util/Timer;

    .line 309
    const-string v0, "PersonalVibration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPauseTimer, isTimerRun"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/settings/personalvibration/BackgroundView;->isTimerRun:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/personalvibration/BackgroundView;->isTimerRun:Z

    .line 313
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    sget-object v1, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Recording:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-ne v0, v1, :cond_3

    .line 314
    iget v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    iput v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPauseSweep:F

    .line 318
    :cond_1
    :goto_1
    sget-object v0, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Pause:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    iput-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    .line 320
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 321
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 323
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/BackgroundView;->invalidate()V

    goto :goto_0

    .line 315
    :cond_3
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    sget-object v1, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Play:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-ne v0, v1, :cond_1

    .line 316
    iget v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPauseSweep:F

    iput v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    goto :goto_1
.end method

.method public setRunPlayTimer()V
    .locals 6

    .prologue
    .line 263
    sget-boolean v0, Lcom/android/settings/personalvibration/BackgroundView;->isTimerRun:Z

    if-nez v0, :cond_0

    .line 264
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/android/settings/personalvibration/BackgroundView;->timer:Ljava/util/Timer;

    .line 265
    sget-object v0, Lcom/android/settings/personalvibration/BackgroundView;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/android/settings/personalvibration/BackgroundView$UpdateTimeTask;

    invoke-direct {v1, p0}, Lcom/android/settings/personalvibration/BackgroundView$UpdateTimeTask;-><init>(Lcom/android/settings/personalvibration/BackgroundView;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x32

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 266
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/personalvibration/BackgroundView;->isTimerRun:Z

    .line 267
    sget-object v0, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Play:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    iput-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    .line 268
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    .line 270
    const-string v0, "PersonalVibration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRunPlayTimer, isTimerRun"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/settings/personalvibration/BackgroundView;->isTimerRun:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_0
    return-void
.end method

.method public setRunRecordingTimer()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 247
    sget-boolean v0, Lcom/android/settings/personalvibration/BackgroundView;->isTimerRun:Z

    if-nez v0, :cond_0

    .line 248
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/android/settings/personalvibration/BackgroundView;->timer:Ljava/util/Timer;

    .line 249
    sget-object v0, Lcom/android/settings/personalvibration/BackgroundView;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/android/settings/personalvibration/BackgroundView$UpdateTimeTask;

    invoke-direct {v1, p0}, Lcom/android/settings/personalvibration/BackgroundView$UpdateTimeTask;-><init>(Lcom/android/settings/personalvibration/BackgroundView;)V

    const-wide/16 v2, 0x64

    const-wide/16 v4, 0x32

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 250
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/personalvibration/BackgroundView;->isTimerRun:Z

    .line 252
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->startTime:J

    .line 253
    iput-wide v6, p0, Lcom/android/settings/personalvibration/BackgroundView;->uptime:J

    .line 254
    iput-wide v6, p0, Lcom/android/settings/personalvibration/BackgroundView;->downtime:J

    .line 255
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->patternString:Ljava/lang/String;

    .line 256
    sget-object v0, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Recording:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    iput-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    .line 257
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    .line 258
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 260
    :cond_0
    return-void
.end method

.method public setStopTimer()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 275
    sget-boolean v0, Lcom/android/settings/personalvibration/BackgroundView;->isTimerRun:Z

    if-eqz v0, :cond_0

    .line 276
    sget-object v0, Lcom/android/settings/personalvibration/BackgroundView;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 277
    sget-object v0, Lcom/android/settings/personalvibration/BackgroundView;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 278
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/personalvibration/BackgroundView;->timer:Ljava/util/Timer;

    .line 280
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/personalvibration/BackgroundView;->isTimerRun:Z

    .line 281
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->vib:Landroid/os/SystemVibrator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->vib:Landroid/os/SystemVibrator;

    invoke-virtual {v0}, Landroid/os/SystemVibrator;->cancel()V

    .line 283
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    .line 284
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 286
    iput-wide v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->uptime:J

    .line 287
    iput-wide v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->downtime:J

    .line 289
    sget-object v0, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Standby:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    iput-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    .line 291
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 292
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 294
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/BackgroundView;->invalidate()V

    .line 295
    return-void
.end method

.method public validateLastValue()Z
    .locals 7

    .prologue
    const/high16 v4, 0x43b4

    .line 332
    iget-object v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 333
    .local v0, i:I
    if-gez v0, :cond_0

    .line 334
    const/4 v2, 0x0

    .line 350
    :goto_0
    return v2

    .line 335
    :cond_0
    iget-object v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/personalvibration/BackgroundView$floatValue;

    .line 337
    .local v1, temp2:Lcom/android/settings/personalvibration/BackgroundView$floatValue;
    iget v2, v1, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->up:F

    const/high16 v3, -0x4080

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    .line 338
    iget v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_2

    .line 339
    iput v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    iput v4, v1, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->up:F

    .line 343
    :goto_1
    iget-object v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 344
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->uptime:J

    .line 345
    iget-object v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->vib:Landroid/os/SystemVibrator;

    invoke-virtual {v2}, Landroid/os/SystemVibrator;->cancel()V

    .line 346
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/personalvibration/BackgroundView;->patternString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/settings/personalvibration/BackgroundView;->uptime:J

    iget-wide v5, p0, Lcom/android/settings/personalvibration/BackgroundView;->downtime:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->patternString:Ljava/lang/String;

    .line 348
    const-string v2, "PersonalVibration"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "validateLastValue(), missing last click up value is added now. : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->up:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 341
    :cond_2
    iget v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    iput v2, v1, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->up:F

    goto :goto_1
.end method

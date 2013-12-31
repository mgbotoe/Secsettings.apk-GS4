.class public Lcom/android/settings/SViewColor;
.super Landroid/app/Activity;
.source "SViewColor.java"


# static fields
.field static final COVER_BACKGROUND_COLOR_BUTTON1:I

.field static final COVER_BACKGROUND_COLOR_BUTTON10:I

.field static final COVER_BACKGROUND_COLOR_BUTTON2:I

.field static final COVER_BACKGROUND_COLOR_BUTTON3:I

.field static final COVER_BACKGROUND_COLOR_BUTTON4:I

.field static final COVER_BACKGROUND_COLOR_BUTTON5:I

.field static final COVER_BACKGROUND_COLOR_BUTTON6:I

.field static final COVER_BACKGROUND_COLOR_BUTTON7:I

.field static final COVER_BACKGROUND_COLOR_BUTTON8:I

.field static final COVER_BACKGROUND_COLOR_BUTTON9:I


# instance fields
.field private mAmPm:Landroid/widget/TextView;

.field private mBackground:Landroid/widget/FrameLayout;

.field mCalendar:Ljava/util/Calendar;

.field private mColorArray:[I

.field private mColorButton:Landroid/view/View$OnClickListener;

.field mColorButtonArray:[Lcom/android/settings/ColorButton;

.field private mCurrentCoverBackgroundColor:I

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIs24HTime:Z

.field private mMonthandDay:Landroid/widget/TextView;

.field private mTime:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x21

    const/4 v3, 0x0

    .line 43
    const/16 v0, 0x8

    const/16 v1, 0x6b

    const/16 v2, 0x77

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON1:I

    .line 44
    const/16 v0, 0x98

    const/16 v1, 0x24

    const/16 v2, 0x69

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON2:I

    .line 45
    const/16 v0, 0x15

    const/16 v1, 0x2f

    const/16 v2, 0x26

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON3:I

    .line 46
    const/16 v0, 0x91

    const/16 v1, 0x22

    invoke-static {v0, v1, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON4:I

    .line 47
    const/16 v0, 0x41

    const/16 v1, 0x4f

    const/16 v2, 0x13

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON5:I

    .line 48
    const/16 v0, 0x53

    const/16 v1, 0x10

    invoke-static {v0, v3, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON6:I

    .line 49
    const/16 v0, 0x1d

    const/16 v1, 0x14

    const/16 v2, 0x3d

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON7:I

    .line 50
    const/16 v0, 0x2e

    const/16 v1, 0x1a

    const/16 v2, 0xd

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON8:I

    .line 51
    const/16 v0, 0x75

    const/16 v1, 0x48

    invoke-static {v0, v1, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON9:I

    .line 52
    const/16 v0, 0x25

    invoke-static {v0, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON10:I

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x0

    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 54
    new-array v0, v4, [I

    sget v1, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON1:I

    aput v1, v0, v3

    const/4 v1, 0x1

    sget v2, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON2:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON3:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON4:I

    aput v2, v0, v1

    const/4 v1, 0x4

    sget v2, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON5:I

    aput v2, v0, v1

    const/4 v1, 0x5

    sget v2, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON6:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON7:I

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON8:I

    aput v2, v0, v1

    const/16 v1, 0x8

    sget v2, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON9:I

    aput v2, v0, v1

    const/16 v1, 0x9

    sget v2, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON10:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/SViewColor;->mColorArray:[I

    .line 61
    new-array v0, v4, [Lcom/android/settings/ColorButton;

    iput-object v0, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    .line 75
    iput-boolean v3, p0, Lcom/android/settings/SViewColor;->mIs24HTime:Z

    .line 81
    new-instance v0, Lcom/android/settings/SViewColor$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SViewColor$1;-><init>(Lcom/android/settings/SViewColor;)V

    iput-object v0, p0, Lcom/android/settings/SViewColor;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 230
    new-instance v0, Lcom/android/settings/SViewColor$2;

    invoke-direct {v0, p0}, Lcom/android/settings/SViewColor$2;-><init>(Lcom/android/settings/SViewColor;)V

    iput-object v0, p0, Lcom/android/settings/SViewColor;->mColorButton:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SViewColor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/settings/SViewColor;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/SViewColor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/android/settings/SViewColor;->mCurrentCoverBackgroundColor:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/settings/SViewColor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput p1, p0, Lcom/android/settings/SViewColor;->mCurrentCoverBackgroundColor:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/SViewColor;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/SViewColor;->mBackground:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/SViewColor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/settings/SViewColor;->setfocusButton()V

    return-void
.end method

.method private onTimeChanged()V
    .locals 7

    .prologue
    .line 170
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 171
    .local v1, mCalendar:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 172
    iget-boolean v5, p0, Lcom/android/settings/SViewColor;->mIs24HTime:Z

    if-eqz v5, :cond_4

    .line 173
    iget-object v5, p0, Lcom/android/settings/SViewColor;->mTime:Landroid/widget/TextView;

    const-string v6, "kk:mm"

    invoke-static {v6, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v5, p0, Lcom/android/settings/SViewColor;->mAmPm:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 175
    iget-object v5, p0, Lcom/android/settings/SViewColor;->mAmPm:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/settings/SViewColor;->mAmPm:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    .line 182
    iget-object v5, p0, Lcom/android/settings/SViewColor;->mAmPm:Landroid/widget/TextView;

    const-string v6, "AA"

    invoke-static {v6, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v5, p0, Lcom/android/settings/SViewColor;->mAmPm:Landroid/widget/TextView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 187
    :cond_1
    const-string v0, ""

    .line 188
    .local v0, dateFormat:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/SViewColor;->getCurrentDateFormat()Ljava/lang/String;

    move-result-object v4

    .line 189
    .local v4, value:Ljava/lang/String;
    const v2, 0x1040101

    .line 190
    .local v2, resId_MM_dd:I
    const v3, 0x1040102

    .line 192
    .local v3, resId_dd_MM:I
    const v2, 0x1040101

    .line 193
    const v3, 0x1040102

    .line 195
    const-string v5, "yyyy-MM-dd"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "MM-dd-yyyy"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 196
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/settings/SViewColor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 201
    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/android/settings/SViewColor;->mMonthandDay:Landroid/widget/TextView;

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    return-void

    .line 177
    .end local v0           #dateFormat:Ljava/lang/String;
    .end local v2           #resId_MM_dd:I
    .end local v3           #resId_dd_MM:I
    .end local v4           #value:Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/android/settings/SViewColor;->mTime:Landroid/widget/TextView;

    const-string v6, "h:mm"

    invoke-static {v6, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v5, p0, Lcom/android/settings/SViewColor;->mAmPm:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 179
    iget-object v5, p0, Lcom/android/settings/SViewColor;->mAmPm:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 197
    .restart local v0       #dateFormat:Ljava/lang/String;
    .restart local v2       #resId_MM_dd:I
    .restart local v3       #resId_dd_MM:I
    .restart local v4       #value:Ljava/lang/String;
    :cond_5
    const-string v5, "dd-MM-yyyy"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 198
    invoke-virtual {p0, v3}, Lcom/android/settings/SViewColor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private setfocusButton()V
    .locals 3

    .prologue
    .line 274
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 275
    iget v1, p0, Lcom/android/settings/SViewColor;->mCurrentCoverBackgroundColor:I

    iget-object v2, p0, Lcom/android/settings/SViewColor;->mColorArray:[I

    aget v2, v2, v0

    if-ne v1, v2, :cond_0

    .line 276
    iget-object v1, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/ColorButton;->setFocus(Z)V

    .line 280
    :goto_1
    iget-object v1, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/settings/ColorButton;->invalidate()V

    .line 274
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 278
    :cond_0
    iget-object v1, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/ColorButton;->setFocus(Z)V

    goto :goto_1

    .line 282
    :cond_1
    return-void
.end method


# virtual methods
.method public getCurrentDateFormat()Ljava/lang/String;
    .locals 9

    .prologue
    .line 206
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    .local v5, result:Ljava/lang/StringBuilder;
    const-string v6, "yyyy"

    .line 208
    .local v6, year:Ljava/lang/String;
    const-string v4, "MM"

    .line 209
    .local v4, month:Ljava/lang/String;
    const-string v0, "dd"

    .line 210
    .local v0, day:Ljava/lang/String;
    const-string v1, "-"

    .line 212
    .local v1, divider:Ljava/lang/String;
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v2

    .line 213
    .local v2, formatArray:[C
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v7, v2

    if-ge v3, v7, :cond_4

    .line 214
    aget-char v7, v2, v3

    const/16 v8, 0x79

    if-ne v7, v8, :cond_0

    .line 215
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    :cond_0
    aget-char v7, v2, v3

    const/16 v8, 0x4d

    if-ne v7, v8, :cond_1

    .line 218
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    :cond_1
    aget-char v7, v2, v3

    const/16 v8, 0x64

    if-ne v7, v8, :cond_2

    .line 221
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    :cond_2
    array-length v7, v2

    add-int/lit8 v7, v7, -0x1

    if-eq v3, v7, :cond_3

    .line 224
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 227
    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 94
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    const v1, 0x7f040042

    invoke-virtual {p0, v1}, Lcom/android/settings/SViewColor;->setContentView(I)V

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/SViewColor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "s_vew_cover_background_color"

    sget v3, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON1:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/SViewColor;->mCurrentCoverBackgroundColor:I

    .line 100
    const v1, 0x7f0b00bd

    invoke-virtual {p0, v1}, Lcom/android/settings/SViewColor;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/settings/SViewColor;->mBackground:Landroid/widget/FrameLayout;

    .line 101
    iget-object v1, p0, Lcom/android/settings/SViewColor;->mBackground:Landroid/widget/FrameLayout;

    iget v2, p0, Lcom/android/settings/SViewColor;->mCurrentCoverBackgroundColor:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, clockTypeface:Landroid/graphics/Typeface;
    const-string v1, "system/fonts/SamsungSans_Light.ttf"

    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 106
    const v1, 0x7f0b03bf

    invoke-virtual {p0, v1}, Lcom/android/settings/SViewColor;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/SViewColor;->mTime:Landroid/widget/TextView;

    .line 107
    const v1, 0x7f0b03c0

    invoke-virtual {p0, v1}, Lcom/android/settings/SViewColor;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/SViewColor;->mAmPm:Landroid/widget/TextView;

    .line 108
    const v1, 0x7f0b03c1

    invoke-virtual {p0, v1}, Lcom/android/settings/SViewColor;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/SViewColor;->mMonthandDay:Landroid/widget/TextView;

    .line 109
    iget-object v1, p0, Lcom/android/settings/SViewColor;->mTime:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 111
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/SViewColor;->mIs24HTime:Z

    .line 113
    iget-object v2, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    const v1, 0x7f0b00be

    invoke-virtual {p0, v1}, Lcom/android/settings/SViewColor;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/ColorButton;

    aput-object v1, v2, v4

    .line 114
    iget-object v1, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    aget-object v1, v1, v4

    iget-object v2, p0, Lcom/android/settings/SViewColor;->mColorButton:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/android/settings/ColorButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v2, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    const v1, 0x7f0b00bf

    invoke-virtual {p0, v1}, Lcom/android/settings/SViewColor;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/ColorButton;

    aput-object v1, v2, v5

    .line 117
    iget-object v1, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    aget-object v1, v1, v5

    iget-object v2, p0, Lcom/android/settings/SViewColor;->mColorButton:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/android/settings/ColorButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v2, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    const v1, 0x7f0b00c0

    invoke-virtual {p0, v1}, Lcom/android/settings/SViewColor;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/ColorButton;

    aput-object v1, v2, v6

    .line 120
    iget-object v1, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    aget-object v1, v1, v6

    iget-object v2, p0, Lcom/android/settings/SViewColor;->mColorButton:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/android/settings/ColorButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v2, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    const v1, 0x7f0b00c1

    invoke-virtual {p0, v1}, Lcom/android/settings/SViewColor;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/ColorButton;

    aput-object v1, v2, v7

    .line 123
    iget-object v1, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    aget-object v1, v1, v7

    iget-object v2, p0, Lcom/android/settings/SViewColor;->mColorButton:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/android/settings/ColorButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v2, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    const v1, 0x7f0b00c2

    invoke-virtual {p0, v1}, Lcom/android/settings/SViewColor;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/ColorButton;

    aput-object v1, v2, v8

    .line 126
    iget-object v1, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    aget-object v1, v1, v8

    iget-object v2, p0, Lcom/android/settings/SViewColor;->mColorButton:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/android/settings/ColorButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v2, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    const/4 v3, 0x5

    const v1, 0x7f0b00c3

    invoke-virtual {p0, v1}, Lcom/android/settings/SViewColor;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/ColorButton;

    aput-object v1, v2, v3

    .line 129
    iget-object v1, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/settings/SViewColor;->mColorButton:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/android/settings/ColorButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v2, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    const/4 v3, 0x6

    const v1, 0x7f0b00c4

    invoke-virtual {p0, v1}, Lcom/android/settings/SViewColor;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/ColorButton;

    aput-object v1, v2, v3

    .line 132
    iget-object v1, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/settings/SViewColor;->mColorButton:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/android/settings/ColorButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v2, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    const/4 v3, 0x7

    const v1, 0x7f0b00c5

    invoke-virtual {p0, v1}, Lcom/android/settings/SViewColor;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/ColorButton;

    aput-object v1, v2, v3

    .line 135
    iget-object v1, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/settings/SViewColor;->mColorButton:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/android/settings/ColorButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v2, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    const/16 v3, 0x8

    const v1, 0x7f0b00c6

    invoke-virtual {p0, v1}, Lcom/android/settings/SViewColor;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/ColorButton;

    aput-object v1, v2, v3

    .line 138
    iget-object v1, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/settings/SViewColor;->mColorButton:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/android/settings/ColorButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v2, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    const/16 v3, 0x9

    const v1, 0x7f0b00c7

    invoke-virtual {p0, v1}, Lcom/android/settings/SViewColor;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/ColorButton;

    aput-object v1, v2, v3

    .line 141
    iget-object v1, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/settings/SViewColor;->mColorButton:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/android/settings/ColorButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    invoke-direct {p0}, Lcom/android/settings/SViewColor;->setfocusButton()V

    .line 144
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 286
    const/high16 v2, 0x104

    invoke-interface {p1, v3, v5, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 287
    .local v0, mCancel:Landroid/view/MenuItem;
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 288
    const v2, 0x7f0903ae

    invoke-interface {p1, v3, v4, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 289
    .local v1, mSave:Landroid/view/MenuItem;
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 290
    return v5
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 295
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 304
    invoke-virtual {p0}, Lcom/android/settings/SViewColor;->finish()V

    .line 307
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 297
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/SViewColor;->finish()V

    goto :goto_0

    .line 300
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/SViewColor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "s_vew_cover_background_color"

    iget v2, p0, Lcom/android/settings/SViewColor;->mCurrentCoverBackgroundColor:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 301
    invoke-virtual {p0}, Lcom/android/settings/SViewColor;->finish()V

    goto :goto_0

    .line 295
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 164
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 166
    iget-object v0, p0, Lcom/android/settings/SViewColor;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/SViewColor;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 167
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 148
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 150
    invoke-direct {p0}, Lcom/android/settings/SViewColor;->onTimeChanged()V

    .line 152
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 154
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 157
    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 159
    iget-object v1, p0, Lcom/android/settings/SViewColor;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/SViewColor;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 160
    return-void
.end method

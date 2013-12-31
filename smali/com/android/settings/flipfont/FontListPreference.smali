.class public Lcom/android/settings/flipfont/FontListPreference;
.super Landroid/preference/ListPreference;
.source "FontListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/flipfont/FontListPreference$LoadListTask;
    }
.end annotation


# static fields
.field public static DEBUG:Z

.field public static NO_CANCEL:Z

.field public static NO_WARNING_DIALOG:Z

.field public static REBOOT:Z

.field private static final apkNameList:[Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field private isWidget:Ljava/lang/Boolean;

.field private mBuyButtonClicked:Z

.field private mCheckBadFont:Z

.field private mClickedItem:I

.field private mDefaultUseHelvetica:Z

.field private mDialogBottomPadding:I

.field private mDialogLeftPadding:I

.field private mDialogRightPadding:I

.field private mDialogTopPadding:I

.field private mDisplaySettings:Lcom/android/settings/DisplaySettings;

.field private mFileCopying:Z

.field private mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

.field private mFontMenu:Lcom/android/settings/FontMenu;

.field private mListDialogIsActive:Z

.field private mPreviousFont:I

.field private mQuestionDialogFontSize:I

.field private mRebootDialogIsActive:Z

.field private mSavedClickedItem:I

.field private mSelectDialogIsActive:Z

.field mSetFontToAlert:Landroid/app/AlertDialog;

.field mState:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 80
    sput-boolean v2, Lcom/android/settings/flipfont/FontListPreference;->REBOOT:Z

    .line 83
    sput-boolean v3, Lcom/android/settings/flipfont/FontListPreference;->NO_WARNING_DIALOG:Z

    .line 86
    sput-boolean v2, Lcom/android/settings/flipfont/FontListPreference;->NO_CANCEL:Z

    .line 88
    sput-boolean v2, Lcom/android/settings/flipfont/FontListPreference;->DEBUG:Z

    .line 1069
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v2

    const-string v1, "com.monotype.android.font.chococooky"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "com.monotype.android.font.cooljazz"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.monotype.android.font.helvneuelt"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.monotype.android.font.samsungsans"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.monotype.android.font.rosemary"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.monotype.android.font.applemint"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.monotype.android.font.tinkerbell"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.monotype.android.font.maruberi"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.monotype.android.font.mincho"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.monotype.android.font.arjpopb"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.monotype.android.font.kaiti"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.monotype.android.font.shaonv"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.monotype.android.font.miao"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/flipfont/FontListPreference;->apkNameList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 269
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/flipfont/FontListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 270
    sget-boolean v0, Lcom/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 271
    const-string v0, "FlipFont"

    const-string v1, "FontListPreference(Context context)"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .parameter "context"
    .parameter "attrs"

    .prologue
    const v8, 0x7f090a69

    const/16 v7, 0x14

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 151
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 91
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    .line 99
    iput-boolean v4, p0, Lcom/android/settings/flipfont/FontListPreference;->mDefaultUseHelvetica:Z

    .line 102
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    .line 106
    iput v5, p0, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    .line 109
    iput v5, p0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    .line 112
    iput-boolean v4, p0, Lcom/android/settings/flipfont/FontListPreference;->mBuyButtonClicked:Z

    .line 115
    iput-boolean v4, p0, Lcom/android/settings/flipfont/FontListPreference;->mFileCopying:Z

    .line 118
    iput v7, p0, Lcom/android/settings/flipfont/FontListPreference;->mQuestionDialogFontSize:I

    .line 121
    iput v7, p0, Lcom/android/settings/flipfont/FontListPreference;->mDialogLeftPadding:I

    .line 123
    const/16 v3, 0xa

    iput v3, p0, Lcom/android/settings/flipfont/FontListPreference;->mDialogTopPadding:I

    .line 125
    iput v7, p0, Lcom/android/settings/flipfont/FontListPreference;->mDialogRightPadding:I

    .line 127
    const/16 v3, 0xa

    iput v3, p0, Lcom/android/settings/flipfont/FontListPreference;->mDialogBottomPadding:I

    .line 131
    iput-boolean v4, p0, Lcom/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    .line 132
    iput v5, p0, Lcom/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    .line 135
    iput-boolean v4, p0, Lcom/android/settings/flipfont/FontListPreference;->mRebootDialogIsActive:Z

    .line 136
    iput-boolean v4, p0, Lcom/android/settings/flipfont/FontListPreference;->mListDialogIsActive:Z

    .line 137
    iput-boolean v4, p0, Lcom/android/settings/flipfont/FontListPreference;->mCheckBadFont:Z

    .line 142
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/flipfont/FontListPreference;->isWidget:Ljava/lang/Boolean;

    .line 145
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/settings/flipfont/FontListPreference;->mState:Landroid/os/Bundle;

    .line 154
    sget-boolean v3, Lcom/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 155
    const-string v3, "FlipFont"

    const-string v4, "FontListPreference(Context context, AttributeSet attrs)"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_0
    iput-object p1, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    .line 159
    const-string v3, "MONOTYPE"

    invoke-virtual {p0, v3}, Lcom/android/settings/flipfont/FontListPreference;->setKey(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0, v8}, Lcom/android/settings/flipfont/FontListPreference;->setTitle(I)V

    .line 163
    invoke-static {p1, v6}, Landroid/graphics/Typeface;->getFontPathFlipFont(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, sPath:Ljava/lang/String;
    const-string v3, "MONOTYPE"

    invoke-virtual {p0, v3}, Lcom/android/settings/flipfont/FontListPreference;->setKey(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0, v8}, Lcom/android/settings/flipfont/FontListPreference;->setTitle(I)V

    .line 169
    invoke-static {p1, v6}, Landroid/graphics/Typeface;->getFontPathFlipFont(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, sName:Ljava/lang/String;
    const/4 v2, 0x0

    .line 171
    .local v2, temp:[Ljava/lang/String;
    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 172
    if-eqz v2, :cond_1

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-lez v3, :cond_1

    .line 173
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v0, v2, v3

    .line 177
    :goto_0
    if-nez v0, :cond_2

    .line 178
    const v3, 0x7f090a6a

    invoke-virtual {p0, v3}, Lcom/android/settings/flipfont/FontListPreference;->setSummary(I)V

    .line 188
    :goto_1
    invoke-virtual {p0, v8}, Lcom/android/settings/flipfont/FontListPreference;->setDialogTitle(I)V

    .line 189
    sget-boolean v3, Lcom/android/settings/flipfont/FontListPreference;->NO_CANCEL:Z

    if-eqz v3, :cond_5

    .line 195
    :goto_2
    const v3, 0x7f0200ba

    invoke-virtual {p0, v3}, Lcom/android/settings/flipfont/FontListPreference;->setDialogIcon(I)V

    .line 196
    return-void

    .line 175
    :cond_1
    invoke-static {p1, v6}, Landroid/graphics/Typeface;->getFontNameFlipFont(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 180
    :cond_2
    const-string v3, "default"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 181
    :cond_3
    const v3, 0x7f090a7d

    invoke-virtual {p0, v3}, Lcom/android/settings/flipfont/FontListPreference;->setSummary(I)V

    goto :goto_1

    .line 184
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->getFontName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/flipfont/FontListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 192
    :cond_5
    const/high16 v3, 0x104

    invoke-virtual {p0, v3}, Lcom/android/settings/flipfont/FontListPreference;->setNegativeButtonText(I)V

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/settings/flipfont/FontListPreference;)Lcom/android/settings/flipfont/FontListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/flipfont/FontListPreference;Lcom/android/settings/flipfont/FontListAdapter;)Lcom/android/settings/flipfont/FontListAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/settings/flipfont/FontListPreference;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/android/settings/flipfont/FontListPreference;->mBuyButtonClicked:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/flipfont/FontListPreference;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings/flipfont/FontListPreference;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/settings/flipfont/FontListPreference;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/android/settings/flipfont/FontListPreference;->mRebootDialogIsActive:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/flipfont/FontListPreference;)Lcom/android/settings/FontMenu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontMenu:Lcom/android/settings/FontMenu;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/flipfont/FontListPreference;)Lcom/android/settings/DisplaySettings;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mDisplaySettings:Lcom/android/settings/DisplaySettings;

    return-object v0
.end method

.method private copyFileWithCR(Lcom/android/settings/flipfont/FontWriter;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "fontWriter"
    .parameter "dir"
    .parameter "sPackageName"
    .parameter "sFileIn"
    .parameter "sFileOut"

    .prologue
    .line 497
    const/4 v0, 0x0

    .line 499
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 505
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/fonts/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 506
    .local v3, uriFont:Landroid/net/Uri;
    const/4 v2, 0x0

    .line 508
    .local v2, isFont:Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 514
    invoke-virtual {p1, p2, v2, p5}, Lcom/android/settings/flipfont/FontWriter;->copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)V

    .line 517
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 520
    .end local v2           #isFont:Ljava/io/InputStream;
    .end local v3           #uriFont:Landroid/net/Uri;
    :goto_0
    return-void

    .line 500
    :catch_0
    move-exception v1

    .line 501
    .local v1, e:Ljava/lang/Exception;
    goto :goto_0

    .line 509
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #isFont:Ljava/io/InputStream;
    .restart local v3       #uriFont:Landroid/net/Uri;
    :catch_1
    move-exception v1

    .line 510
    .restart local v1       #e:Ljava/lang/Exception;
    goto :goto_0

    .line 518
    .end local v1           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v4

    goto :goto_0
.end method

.method private deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "str"

    .prologue
    .line 199
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 200
    .local v1, sbf:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 201
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-eq v2, v3, :cond_0

    .line 202
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 200
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 205
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getFontName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "fontName"

    .prologue
    const v3, 0x7f090a76

    const v2, 0x7f090a75

    const v1, 0x7f090a74

    .line 211
    const-string v0, "Rosemary"

    invoke-direct {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    .line 262
    .restart local p1
    :goto_0
    return-object p1

    .line 214
    :cond_0
    const-string v0, "Choco cooky"

    invoke-direct {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    .restart local p1
    goto :goto_0

    .line 217
    :cond_1
    const-string v0, "Cool jazz"

    invoke-direct {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 218
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    .restart local p1
    goto :goto_0

    .line 220
    :cond_2
    const-string v0, "HelveticaNeueRegular"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 221
    const-string p1, "Helvetica S"

    goto :goto_0

    .line 223
    :cond_3
    const-string v0, "Samsung sans"

    invoke-direct {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 224
    const-string p1, "Samsung Sans"

    goto :goto_0

    .line 226
    :cond_4
    const-string v0, "Apple mint"

    invoke-direct {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 227
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090a77

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    .restart local p1
    goto :goto_0

    .line 229
    :cond_5
    const-string v0, "Tinker bell"

    invoke-direct {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 230
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090a78

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    .restart local p1
    goto/16 :goto_0

    .line 232
    :cond_6
    const-string v0, "Shao nv"

    invoke-direct {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 233
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0910d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    .restart local p1
    goto/16 :goto_0

    .line 235
    :cond_7
    const-string v0, "Kaiti"

    invoke-direct {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 236
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0910d3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    .restart local p1
    goto/16 :goto_0

    .line 238
    :cond_8
    const-string v0, "Miao"

    invoke-direct {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 239
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0910d4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    .restart local p1
    goto/16 :goto_0

    .line 241
    :cond_9
    const-string v0, "Maruberi"

    invoke-direct {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 242
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090a7a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    .restart local p1
    goto/16 :goto_0

    .line 244
    :cond_a
    const-string v0, "Mincho"

    invoke-direct {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 245
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090a7b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    .restart local p1
    goto/16 :goto_0

    .line 247
    :cond_b
    const-string v0, "Pop"

    invoke-direct {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 248
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090a7c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    .restart local p1
    goto/16 :goto_0

    .line 250
    :cond_c
    const-string v0, "Cool"

    invoke-direct {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 251
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    .restart local p1
    goto/16 :goto_0

    .line 253
    :cond_d
    const-string v0, "Rose"

    invoke-direct {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 254
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    .restart local p1
    goto/16 :goto_0

    .line 256
    :cond_e
    const-string v0, "Choco"

    invoke-direct {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 257
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    .restart local p1
    goto/16 :goto_0

    .line 260
    :cond_f
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->getFontNameFlipFont(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0
.end method


# virtual methods
.method protected RebootDialog()V
    .locals 4

    .prologue
    .line 996
    sget-boolean v0, Lcom/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 997
    const-string v0, "FlipFont"

    const-string v1, "RebootDialog()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mRebootDialogIsActive:Z

    if-eqz v0, :cond_1

    .line 1043
    :goto_0
    return-void

    .line 1006
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mRebootDialogIsActive:Z

    .line 1007
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->savePreferences()V

    .line 1009
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->hideList()V

    .line 1011
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1012
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f090a7f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1014
    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090a7e

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f090a80

    new-instance v3, Lcom/android/settings/flipfont/FontListPreference$10;

    invoke-direct {v3, p0}, Lcom/android/settings/flipfont/FontListPreference$10;-><init>(Lcom/android/settings/flipfont/FontListPreference;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v2, 0x104

    new-instance v3, Lcom/android/settings/flipfont/FontListPreference$9;

    invoke-direct {v3, p0}, Lcom/android/settings/flipfont/FontListPreference$9;-><init>(Lcom/android/settings/flipfont/FontListPreference;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1033
    new-instance v0, Lcom/android/settings/flipfont/FontListPreference$11;

    invoke-direct {v0, p0}, Lcom/android/settings/flipfont/FontListPreference$11;-><init>(Lcom/android/settings/flipfont/FontListPreference;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1041
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1042
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method protected badFontDialog(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1155
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1161
    const v1, 0x7f090a85

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1164
    const v1, 0x7f090a86

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1167
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1170
    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/flipfont/FontListPreference$12;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/flipfont/FontListPreference$12;-><init>(Lcom/android/settings/flipfont/FontListPreference;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1190
    const/high16 v1, 0x104

    new-instance v2, Lcom/android/settings/flipfont/FontListPreference$13;

    invoke-direct {v2, p0}, Lcom/android/settings/flipfont/FontListPreference$13;-><init>(Lcom/android/settings/flipfont/FontListPreference;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1197
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1198
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1199
    return-void
.end method

.method protected checkFont(Ljava/lang/String;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1088
    sget-boolean v0, Lcom/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1089
    const-string v0, "FlipFont"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkFont - checking apkname"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v0, v1

    .line 1093
    :goto_0
    sget-object v3, Lcom/android/settings/flipfont/FontListPreference;->apkNameList:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 1094
    sget-object v3, Lcom/android/settings/flipfont/FontListPreference;->apkNameList:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1095
    sget-boolean v0, Lcom/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 1096
    const-string v0, "FlipFont"

    const-string v2, "**Apk name matches list**"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    :cond_1
    :goto_1
    return v1

    .line 1093
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1103
    :cond_3
    sget-boolean v0, Lcom/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 1104
    const-string v0, "FlipFont"

    const-string v3, "checkFont - check if valid certificate"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v3, 0x40

    invoke-virtual {v0, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1112
    :goto_2
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 1115
    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    .line 1116
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1119
    :try_start_1
    const-string v0, "X509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 1126
    :goto_3
    :try_start_2
    invoke-virtual {v0, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1131
    :goto_4
    sget-boolean v2, Lcom/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v2, :cond_5

    .line 1132
    const-string v2, "Example"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "APK name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    const-string v2, "Example"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Certificate for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    const-string v2, "Example"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Certificate issued by: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    const-string v2, "Example"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The certificate is valid from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    const-string v2, "Example"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Certificate SN# "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    const-string v2, "Example"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Generated with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    :cond_5
    const-string v2, "CN=Ed Platz, OU=Display Imaging, O=Monotype Imanging Inc., L=Woburn, ST=MA, C=US"

    .line 1142
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1144
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1145
    sget-boolean v0, Lcom/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 1146
    const-string v0, "FlipFont"

    const-string v2, "**Certificate data is correct**"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1110
    :catch_0
    move-exception v0

    move-object v0, v2

    goto/16 :goto_2

    .line 1120
    :catch_1
    move-exception v0

    .line 1122
    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->printStackTrace()V

    move-object v0, v2

    goto/16 :goto_3

    .line 1127
    :catch_2
    move-exception v0

    .line 1129
    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->printStackTrace()V

    move-object v0, v2

    goto/16 :goto_4

    .line 1150
    :cond_6
    const/4 v1, 0x1

    goto/16 :goto_1
.end method

.method public directFontList()V
    .locals 1

    .prologue
    .line 277
    invoke-super {p0}, Landroid/preference/ListPreference;->onClick()V

    .line 278
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->isWidget:Ljava/lang/Boolean;

    .line 279
    return-void
.end method

.method protected dismissApp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 876
    sget-boolean v0, Lcom/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 877
    const-string v0, "FlipFont"

    const-string v1, "dismissApp()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    :cond_0
    iput-boolean v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mRebootDialogIsActive:Z

    .line 882
    iput-boolean v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    .line 883
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->savePreferences()V

    .line 884
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->dismissList()V

    .line 885
    return-void
.end method

.method protected dismissList()V
    .locals 2

    .prologue
    .line 1045
    sget-boolean v0, Lcom/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1046
    const-string v0, "FlipFont"

    const-string v1, "dismissList()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1056
    :cond_1
    :goto_0
    return-void

    .line 1051
    :catch_0
    move-exception v0

    .line 1052
    sget-boolean v0, Lcom/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 1053
    const-string v0, "FlipFont"

    const-string v1, "dismissList() - catch (Exception ex)"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSavedSelectedFontStringPreference()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1203
    const/4 v0, 0x0

    .line 1204
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    const-string v2, "prefs"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1206
    const-string v1, "selectedFont"

    const-string v2, "MONOTYPE"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected hideList()V
    .locals 2

    .prologue
    .line 1060
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1067
    :cond_0
    :goto_0
    return-void

    .line 1062
    :catch_0
    move-exception v0

    .line 1063
    sget-boolean v0, Lcom/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1064
    const-string v0, "FlipFont"

    const-string v1, "hideList() - catch (Exception ex)"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public loadPreferences()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 976
    .line 977
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    const-string v1, "prefs"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 980
    const-string v1, "SelectDialogIsActive"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    .line 981
    const-string v1, "RebootDialogIsActive"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/flipfont/FontListPreference;->mRebootDialogIsActive:Z

    .line 982
    const-string v1, "SavedClickedItem"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    .line 983
    iget v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    .line 984
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "flip_font_style"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 986
    if-ne v1, v3, :cond_0

    .line 987
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "flip_font_style"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 988
    const-string v1, "FontListPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFontStyleIndexForMultiUser() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    iput v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    .line 994
    :goto_0
    return-void

    .line 991
    :cond_0
    iput v1, p0, Lcom/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    goto :goto_0
.end method

.method public onCancelButtonPressed()V
    .locals 4

    .prologue
    .line 683
    sget-boolean v2, Lcom/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 684
    const-string v2, "FlipFont"

    const-string v3, "onCancelButtonPressed() "

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 687
    .local v0, d:Landroid/app/Dialog;
    if-eqz v0, :cond_1

    .line 688
    invoke-virtual {v0}, Landroid/app/Dialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 689
    .local v1, v:Landroid/widget/ListView;
    if-eqz v1, :cond_1

    .line 690
    iget v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 694
    .end local v1           #v:Landroid/widget/ListView;
    :cond_1
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 704
    sget-boolean v0, Lcom/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 705
    const-string v0, "FlipFont"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick(DialogInterface dialog, int which) - which = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/ListPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 709
    iget v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    if-ne p2, v0, :cond_2

    .line 710
    sget-boolean v0, Lcom/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 711
    const-string v0, "FlipFont"

    const-string v1, "onClick(DialogInterface dialog, int which) - exit "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    :cond_1
    :goto_0
    return-void

    .line 715
    :cond_2
    sget-boolean v0, Lcom/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 716
    const-string v0, "FlipFont"

    const-string v1, "onClick(DialogInterface dialog, int which) after (which == mPreviousFont) "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    :cond_3
    const/4 v0, -0x2

    if-ne p2, v0, :cond_6

    .line 720
    sget-boolean v0, Lcom/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 721
    const-string v0, "FlipFont"

    const-string v1, "onClick(DialogInterface dialog, int which) after (which == -2) "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    :cond_4
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mSetFontToAlert:Landroid/app/AlertDialog;

    if-eqz v0, :cond_5

    .line 724
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mSetFontToAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 725
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mSetFontToAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 726
    iput-object v3, p0, Lcom/android/settings/flipfont/FontListPreference;->mSetFontToAlert:Landroid/app/AlertDialog;

    .line 729
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->dismissApp()V

    .line 730
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 731
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 738
    :cond_6
    iput-object v3, p0, Lcom/android/settings/flipfont/FontListPreference;->mSetFontToAlert:Landroid/app/AlertDialog;

    .line 739
    iput p2, p0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    .line 740
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    iget v1, p0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 741
    invoke-virtual {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->checkFont(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/flipfont/FontListPreference;->mCheckBadFont:Z

    .line 742
    iget-boolean v1, p0, Lcom/android/settings/flipfont/FontListPreference;->mCheckBadFont:Z

    if-eqz v1, :cond_7

    .line 743
    invoke-virtual {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->badFontDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 747
    :cond_7
    if-ge p2, v5, :cond_8

    .line 748
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090a6f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 761
    :goto_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 762
    const v2, 0x7f090077

    new-instance v3, Lcom/android/settings/flipfont/FontListPreference$4;

    invoke-direct {v3, p0}, Lcom/android/settings/flipfont/FontListPreference$4;-><init>(Lcom/android/settings/flipfont/FontListPreference;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090078

    new-instance v4, Lcom/android/settings/flipfont/FontListPreference$3;

    invoke-direct {v4, p0}, Lcom/android/settings/flipfont/FontListPreference$3;-><init>(Lcom/android/settings/flipfont/FontListPreference;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 775
    new-instance v2, Lcom/android/settings/flipfont/FontListPreference$5;

    invoke-direct {v2, p0}, Lcom/android/settings/flipfont/FontListPreference$5;-><init>(Lcom/android/settings/flipfont/FontListPreference;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 782
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 783
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f090a70

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 784
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 786
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mSetFontToAlert:Landroid/app/AlertDialog;

    .line 787
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mSetFontToAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 789
    iget v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    iput v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    .line 790
    iput-boolean v5, p0, Lcom/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    .line 792
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->savePreferences()V

    .line 793
    sget-boolean v0, Lcom/android/settings/flipfont/FontListPreference;->REBOOT:Z

    if-eqz v0, :cond_a

    .line 794
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->RebootDialog()V

    goto/16 :goto_0

    .line 752
    :cond_8
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090a6e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 754
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    if-nez v1, :cond_9

    .line 755
    new-instance v1, Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v2, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings/flipfont/FontListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    .line 756
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v1}, Lcom/android/settings/flipfont/FontListAdapter;->loadTypefaces()V

    .line 758
    :cond_9
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    invoke-virtual {v1, v2}, Lcom/android/settings/flipfont/FontListAdapter;->getFontName(I)Ljava/lang/String;

    move-result-object v1

    .line 759
    new-array v2, v5, [Ljava/lang/Object;

    aput-object v1, v2, v6

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 797
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->selectDialog()V

    goto/16 :goto_0
.end method

.method public onDialogClosed(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 893
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onDialogClosed(Z)V

    .line 896
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->isWidget:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 897
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->isWidget:Ljava/lang/Boolean;

    .line 898
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontMenu:Lcom/android/settings/FontMenu;

    if-eqz v0, :cond_0

    .line 899
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontMenu:Lcom/android/settings/FontMenu;

    invoke-virtual {v0}, Lcom/android/settings/FontMenu;->finish()V

    .line 901
    :cond_0
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mDisplaySettings:Lcom/android/settings/DisplaySettings;

    if-eqz v0, :cond_1

    .line 902
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mDisplaySettings:Lcom/android/settings/DisplaySettings;

    invoke-virtual {v0}, Lcom/android/settings/DisplaySettings;->finish()V

    .line 907
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mBuyButtonClicked:Z

    if-eqz v0, :cond_2

    .line 930
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090a72

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 932
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 933
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 934
    const v0, 0x14000020

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 935
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 936
    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 937
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 938
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090a71

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 940
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 942
    :goto_0
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 943
    iput-boolean v3, p0, Lcom/android/settings/flipfont/FontListPreference;->mBuyButtonClicked:Z

    .line 946
    :cond_2
    return-void

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public onOkButtonPressed()Z
    .locals 32

    .prologue
    .line 529
    const-string v2, "FontListPreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onOkButtonPressed : mClickedItem : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    invoke-virtual {v2, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 532
    .local v5, apkname:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/settings/flipfont/FontListPreference;->checkFont(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 534
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    .line 535
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/flipfont/FontListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v15

    .line 536
    .local v15, d:Landroid/app/Dialog;
    invoke-virtual {v15}, Landroid/app/Dialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/ListView;

    .line 537
    .local v29, v:Landroid/widget/ListView;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    const/4 v6, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 538
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/flipfont/FontListPreference;->savePreferences()V

    .line 539
    sget-boolean v2, Lcom/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 540
    const-string v2, "FlipFont"

    const-string v6, "**onOkButtonPressed - bad font**"

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :cond_0
    const/4 v2, 0x0

    .line 676
    .end local v15           #d:Landroid/app/Dialog;
    .end local v29           #v:Landroid/widget/ListView;
    :goto_0
    return v2

    .line 545
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    const/4 v6, -0x1

    if-ne v2, v6, :cond_4

    .line 546
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    .line 550
    :goto_1
    const-string v2, "FontListPreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onOkButtonPressed : mSavedClickedItem : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/flipfont/FontListPreference;->savePreferences()V

    .line 553
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    if-nez v2, :cond_2

    .line 554
    new-instance v2, Lcom/android/settings/flipfont/FontListAdapter;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-direct {v2, v6}, Lcom/android/settings/flipfont/FontListAdapter;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    .line 555
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v2}, Lcom/android/settings/flipfont/FontListAdapter;->loadTypefaces()V

    .line 558
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    invoke-virtual {v2, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    .line 561
    .local v27, selectedFont:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/flipfont/FontListPreference;->saveSelectedFontStringPreferences(Ljava/lang/String;)V

    .line 564
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    .line 567
    new-instance v3, Lcom/android/settings/flipfont/FontWriter;

    invoke-direct {v3}, Lcom/android/settings/flipfont/FontWriter;-><init>()V

    .line 570
    .local v3, fontWriter:Lcom/android/settings/flipfont/FontWriter;
    if-eqz v27, :cond_3

    const-string v2, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 572
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    const-string v6, "sans.loc"

    const-string v7, "default#default"

    invoke-virtual {v3, v2, v6, v7}, Lcom/android/settings/flipfont/FontWriter;->writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    if-nez v27, :cond_8

    .line 575
    const-string v2, "FontListPreference"

    const-string v6, "onOkButtonPressed() : selectedFont == null "

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 548
    .end local v3           #fontWriter:Lcom/android/settings/flipfont/FontWriter;
    .end local v27           #selectedFont:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    goto/16 :goto_1

    .line 582
    .restart local v3       #fontWriter:Lcom/android/settings/flipfont/FontWriter;
    .restart local v27       #selectedFont:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFinder:Lcom/android/settings/flipfont/TypefaceFinder;

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Lcom/android/settings/flipfont/TypefaceFinder;->findMatchingTypeface(Ljava/lang/String;)Lcom/android/settings/flipfont/Typeface;

    move-result-object v26

    .line 585
    .local v26, sansTypeface:Lcom/android/settings/flipfont/Typeface;
    move-object/from16 v25, v27

    .line 586
    .local v25, sFontDir:Ljava/lang/String;
    const-string v2, ".xml"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v21

    .line 587
    .local v21, index:I
    if-lez v21, :cond_6

    .line 588
    const/4 v2, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v21

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    .line 590
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    move-object/from16 v0, v25

    invoke-virtual {v3, v2, v0}, Lcom/android/settings/flipfont/FontWriter;->createFontDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 593
    .local v4, fontDir:Ljava/io/File;
    const/16 v28, 0x0

    .line 594
    .local v28, tpf:Lcom/android/settings/flipfont/TypefaceFile;
    if-eqz v26, :cond_7

    .line 595
    const/16 v18, 0x0

    .local v18, i:I
    :goto_2
    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/android/settings/flipfont/Typeface;->mSansFonts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v18

    if-ge v0, v2, :cond_7

    .line 596
    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/android/settings/flipfont/Typeface;->mSansFonts:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    .end local v28           #tpf:Lcom/android/settings/flipfont/TypefaceFile;
    check-cast v28, Lcom/android/settings/flipfont/TypefaceFile;

    .line 599
    .restart local v28       #tpf:Lcom/android/settings/flipfont/TypefaceFile;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    invoke-virtual {v2, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    .line 600
    .local v22, press_apkname:Ljava/lang/String;
    const-string v2, "FontListPreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onOkButtonPressed : Application name, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v6, 0x80

    move-object/from16 v0, v22

    invoke-virtual {v2, v0, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    .line 602
    .local v12, appInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v2, v12, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v2, v12, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 603
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v12}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v23

    .line 605
    .local v23, res:Landroid/content/res/Resources;
    invoke-virtual/range {v23 .. v23}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v13

    .line 606
    .local v13, assetManager:Landroid/content/res/AssetManager;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fonts/"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v28 .. v28}, Lcom/android/settings/flipfont/TypefaceFile;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v20

    .line 608
    .local v20, in:Ljava/io/InputStream;
    invoke-virtual/range {v28 .. v28}, Lcom/android/settings/flipfont/TypefaceFile;->getDroidName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v3, v4, v0, v2}, Lcom/android/settings/flipfont/FontWriter;->copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)V

    .line 609
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 595
    .end local v12           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v13           #assetManager:Landroid/content/res/AssetManager;
    .end local v20           #in:Ljava/io/InputStream;
    .end local v22           #press_apkname:Ljava/lang/String;
    .end local v23           #res:Landroid/content/res/Resources;
    :goto_3
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_2

    .line 610
    :catch_0
    move-exception v17

    .line 611
    .local v17, ex:Ljava/lang/Exception;
    const-string v2, "FontListPreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception in file operation, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    invoke-virtual/range {v28 .. v28}, Lcom/android/settings/flipfont/TypefaceFile;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v28 .. v28}, Lcom/android/settings/flipfont/TypefaceFile;->getDroidName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/flipfont/FontListPreference;->copyFileWithCR(Lcom/android/settings/flipfont/FontWriter;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 619
    .end local v17           #ex:Ljava/lang/Exception;
    .end local v18           #i:I
    :cond_7
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    const-string v6, "sans.loc"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v30, "#"

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v2, v6, v7}, Lcom/android/settings/flipfont/FontWriter;->writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 625
    .end local v4           #fontDir:Ljava/io/File;
    .end local v21           #index:I
    .end local v25           #sFontDir:Ljava/lang/String;
    .end local v26           #sansTypeface:Lcom/android/settings/flipfont/Typeface;
    .end local v28           #tpf:Lcom/android/settings/flipfont/TypefaceFile;
    :cond_8
    :goto_4
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v11

    .line 628
    .local v11, am:Landroid/app/IActivityManager;
    sget-boolean v2, Lcom/android/settings/flipfont/FontListPreference;->REBOOT:Z

    if-nez v2, :cond_c

    .line 632
    const-wide/16 v6, 0x64

    :try_start_2
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 640
    :goto_5
    :try_start_3
    invoke-interface {v11}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    .line 643
    .local v14, config:Landroid/content/res/Configuration;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iput v2, v14, Landroid/content/res/Configuration;->FlipFont:I

    .line 645
    invoke-interface {v11, v14}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 651
    .end local v14           #config:Landroid/content/res/Configuration;
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager;

    .line 652
    .local v9, activityManager:Landroid/app/ActivityManager;
    const/16 v2, 0x32

    invoke-virtual {v9, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v10

    .line 653
    .local v10, allTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/16 v18, 0x1

    .line 654
    .restart local v18       #i:I
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, i$:Ljava/util/Iterator;
    :cond_9
    :goto_7
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 655
    .local v8, aTask:Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v2, v8, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v24

    .line 657
    .local v24, s:Ljava/lang/String;
    const-string v2, "com.android.settings"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "com.samsung.music"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "com.sec.android.app.music"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_9

    .line 658
    const-string v2, "com.infraware.polarisoffice"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "com.infraware.polarisoffice4"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "com.infraware.polarisviewer4"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "com.infraware.PolarisOfficeStdForTablet"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "com.infraware.polarisviewer5tablet"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "com.infraware.polarisoffice5tablet"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "com.infraware.polarisoffice4.document"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "com.infraware.polarisoffice5"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "com.infraware.polarisoffice5.document"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "com.infraware.polarisviewer5"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "com.infraware.polarisviewer5.document"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_b

    .line 662
    :cond_a
    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 620
    .end local v8           #aTask:Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v9           #activityManager:Landroid/app/ActivityManager;
    .end local v10           #allTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v11           #am:Landroid/app/IActivityManager;
    .end local v18           #i:I
    .end local v19           #i$:Ljava/util/Iterator;
    .end local v24           #s:Ljava/lang/String;
    .restart local v4       #fontDir:Ljava/io/File;
    .restart local v21       #index:I
    .restart local v25       #sFontDir:Ljava/lang/String;
    .restart local v26       #sansTypeface:Lcom/android/settings/flipfont/Typeface;
    .restart local v28       #tpf:Lcom/android/settings/flipfont/TypefaceFile;
    :catch_1
    move-exception v16

    .line 621
    .local v16, e:Ljava/lang/RuntimeException;
    const-string v2, "FontListPreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fontWriter.writeLoc() : RuntimeException occured. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 633
    .end local v4           #fontDir:Ljava/io/File;
    .end local v16           #e:Ljava/lang/RuntimeException;
    .end local v21           #index:I
    .end local v25           #sFontDir:Ljava/lang/String;
    .end local v26           #sansTypeface:Lcom/android/settings/flipfont/Typeface;
    .end local v28           #tpf:Lcom/android/settings/flipfont/TypefaceFile;
    .restart local v11       #am:Landroid/app/IActivityManager;
    :catch_2
    move-exception v16

    .line 635
    .local v16, e:Ljava/lang/InterruptedException;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_5

    .line 664
    .end local v16           #e:Ljava/lang/InterruptedException;
    .restart local v8       #aTask:Landroid/app/ActivityManager$RunningTaskInfo;
    .restart local v9       #activityManager:Landroid/app/ActivityManager;
    .restart local v10       #allTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .restart local v18       #i:I
    .restart local v19       #i$:Ljava/util/Iterator;
    .restart local v24       #s:Ljava/lang/String;
    :cond_b
    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 673
    .end local v8           #aTask:Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v9           #activityManager:Landroid/app/ActivityManager;
    .end local v10           #allTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v18           #i:I
    .end local v19           #i$:Ljava/util/Iterator;
    .end local v24           #s:Ljava/lang/String;
    :cond_c
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 674
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/flipfont/FontListPreference;->restartLater()V

    .line 676
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 647
    :catch_3
    move-exception v2

    goto/16 :goto_6
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 6
    .parameter "builder"

    .prologue
    const v5, 0x7f090a6c

    .line 295
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 297
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->getSavedSelectedFontStringPreference()Ljava/lang/String;

    move-result-object v1

    .line 299
    .local v1, selectedFont:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 300
    iget-object v2, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090a6d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 306
    .local v0, okButton:Ljava/lang/String;
    :goto_0
    const-string v2, "FontListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrepareDialogBuilder : selectedFont : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const-string v2, "FontListPreference"

    const-string v3, "onPrepareDialogBuilder : KEY_PREFERENCE : MONOTYPE"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const-string v2, "MONOTYPE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 312
    const-string v2, "FontListPreference"

    const-string v3, "onPrepareDialogBuilder : selectedFont == KEY_PREFERENCE"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-boolean v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mDefaultUseHelvetica:Z

    if-eqz v2, :cond_3

    .line 315
    const-string v1, "HelveticaNeueRegular.xml"

    .line 316
    iget-object v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    .line 317
    const-string v2, "FontListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrepareDialogBuilder : Use Helvetica by default. selectedFont : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const-string v2, "FontListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrepareDialogBuilder : Helvetica index : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :goto_1
    iget v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    if-gez v2, :cond_0

    .line 337
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    .line 339
    :cond_0
    iget-object v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget v3, p0, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    invoke-virtual {p1, v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 340
    const-string v2, "CHM"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "CMCC"

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 342
    sget-boolean v2, Lcom/android/settings/flipfont/FontListPreference;->NO_CANCEL:Z

    if-eqz v2, :cond_5

    .line 343
    new-instance v2, Lcom/android/settings/flipfont/FontListPreference$1;

    invoke-direct {v2, p0}, Lcom/android/settings/flipfont/FontListPreference$1;-><init>(Lcom/android/settings/flipfont/FontListPreference;)V

    invoke-virtual {p1, v5, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 373
    :cond_1
    :goto_2
    return-void

    .line 303
    .end local v0           #okButton:Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .restart local v0       #okButton:Ljava/lang/String;
    goto/16 :goto_0

    .line 322
    :cond_3
    const-string v1, "default"

    .line 323
    iget-object v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    .line 324
    const-string v2, "FontListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrepareDialogBuilder : Use Android DroidSans by default. selectedFont : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const-string v2, "FontListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrepareDialogBuilder : Android DroidSans index : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 330
    :cond_4
    const-string v2, "FontListPreference"

    const-string v3, "onPrepareDialogBuilder : selectedFont != KEY_PREFERENCE"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget-object v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    .line 332
    const-string v2, "FontListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrepareDialogBuilder : selectedFont : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const-string v2, "FontListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrepareDialogBuilder : selectedFont index : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 357
    :cond_5
    new-instance v2, Lcom/android/settings/flipfont/FontListPreference$2;

    invoke-direct {v2, p0}, Lcom/android/settings/flipfont/FontListPreference$2;-><init>(Lcom/android/settings/flipfont/FontListPreference;)V

    invoke-virtual {p1, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_2
.end method

.method public restartLater()V
    .locals 1

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 481
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 489
    :cond_0
    return-void
.end method

.method public restartNow()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 453
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.REBOOT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 454
    .local v1, i:Landroid/content/Intent;
    const-string v3, "nowait"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 455
    const-string v3, "interval"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 456
    const-string v3, "window"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 459
    const/4 v2, 0x0

    .local v2, index:I
    :goto_0
    const/16 v3, 0x14

    if-ge v2, v3, :cond_0

    .line 461
    iget-boolean v3, p0, Lcom/android/settings/flipfont/FontListPreference;->mFileCopying:Z

    if-nez v3, :cond_1

    .line 472
    :cond_0
    iget-object v3, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 473
    return-void

    .line 464
    :cond_1
    const-wide/16 v3, 0x1f4

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 466
    :catch_0
    move-exception v0

    .line 468
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method protected savePreferences()V
    .locals 3

    .prologue
    .line 958
    const/4 v0, 0x0

    .line 959
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    const-string v2, "prefs"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 962
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 964
    const-string v1, "SelectDialogIsActive"

    iget-boolean v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 965
    const-string v1, "RebootDialogIsActive"

    iget-boolean v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mRebootDialogIsActive:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 966
    const-string v1, "SavedClickedItem"

    iget v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 968
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 971
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "flip_font_style"

    iget v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 972
    return-void
.end method

.method public saveSelectedFontStringPreferences(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1211
    const/4 v0, 0x0

    .line 1212
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    const-string v2, "prefs"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1214
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1216
    const-string v1, "selectedFont"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1218
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1219
    return-void
.end method

.method public selectDialog()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 803
    iget-boolean v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    if-eqz v0, :cond_1

    .line 873
    :cond_0
    :goto_0
    return-void

    .line 806
    :cond_1
    iput-boolean v5, p0, Lcom/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    .line 811
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->loadPreferences()V

    .line 812
    iget v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    iput v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    .line 814
    iget v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    if-ge v0, v5, :cond_3

    .line 815
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090a6f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 823
    :goto_1
    sget-boolean v0, Lcom/android/settings/flipfont/FontListPreference;->NO_WARNING_DIALOG:Z

    if-eqz v0, :cond_2

    .line 824
    iput-boolean v6, p0, Lcom/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    .line 825
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->savePreferences()V

    .line 826
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->onOkButtonPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 829
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->dismissApp()V

    .line 833
    :cond_2
    sget-boolean v0, Lcom/android/settings/flipfont/FontListPreference;->REBOOT:Z

    if-eqz v0, :cond_4

    .line 834
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1040013

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 840
    :goto_2
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 841
    new-instance v3, Lcom/android/settings/flipfont/FontListPreference$7;

    invoke-direct {v3, p0}, Lcom/android/settings/flipfont/FontListPreference$7;-><init>(Lcom/android/settings/flipfont/FontListPreference;)V

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x1040009

    new-instance v4, Lcom/android/settings/flipfont/FontListPreference$6;

    invoke-direct {v4, p0}, Lcom/android/settings/flipfont/FontListPreference$6;-><init>(Lcom/android/settings/flipfont/FontListPreference;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 857
    new-instance v0, Lcom/android/settings/flipfont/FontListPreference$8;

    invoke-direct {v0, p0}, Lcom/android/settings/flipfont/FontListPreference$8;-><init>(Lcom/android/settings/flipfont/FontListPreference;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 864
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->hideList()V

    .line 865
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 866
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090a70

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 867
    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 868
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 869
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 870
    iget v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    iput v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    .line 871
    iput-boolean v5, p0, Lcom/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    .line 872
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->savePreferences()V

    goto/16 :goto_0

    .line 818
    :cond_3
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090a6e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 820
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    invoke-virtual {v1, v2}, Lcom/android/settings/flipfont/FontListAdapter;->getFontName(I)Ljava/lang/String;

    move-result-object v1

    .line 821
    new-array v2, v5, [Ljava/lang/Object;

    aput-object v1, v2, v6

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_1

    .line 837
    :cond_4
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f090a80

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_2
.end method

.method public setObject(Lcom/android/settings/DisplaySettings;)V
    .locals 0
    .parameter "displaySettings"

    .prologue
    .line 285
    iput-object p1, p0, Lcom/android/settings/flipfont/FontListPreference;->mDisplaySettings:Lcom/android/settings/DisplaySettings;

    .line 286
    return-void
.end method

.method public setObject(Lcom/android/settings/FontMenu;)V
    .locals 0
    .parameter "fontMenu"

    .prologue
    .line 282
    iput-object p1, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontMenu:Lcom/android/settings/FontMenu;

    .line 283
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v2, 0x0

    .line 418
    sget-boolean v0, Lcom/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 419
    const-string v0, "FlipFont"

    const-string v1, "showDialog  (AlertDialog.Builder builder)"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    if-nez v0, :cond_2

    .line 421
    iput-object p1, p0, Lcom/android/settings/flipfont/FontListPreference;->mState:Landroid/os/Bundle;

    .line 422
    new-instance v0, Lcom/android/settings/flipfont/FontListPreference$LoadListTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/flipfont/FontListPreference$LoadListTask;-><init>(Lcom/android/settings/flipfont/FontListPreference;Lcom/android/settings/flipfont/FontListPreference$1;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/flipfont/FontListPreference$LoadListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 446
    :cond_1
    :goto_0
    return-void

    .line 426
    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mRebootDialogIsActive:Z

    if-nez v0, :cond_3

    .line 427
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    iget-object v1, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v1, v1, Lcom/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 428
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    iget-object v1, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v1, v1, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 431
    :cond_3
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v0}, Lcom/android/settings/flipfont/FontListAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_4

    .line 432
    const v0, 0x7f090a73

    invoke-virtual {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->setDialogTitle(I)V

    .line 434
    :cond_4
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->showDialog(Landroid/os/Bundle;)V

    .line 435
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->loadPreferences()V

    .line 436
    iget-boolean v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    .line 437
    iput-boolean v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    .line 438
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->savePreferences()V

    .line 439
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->selectDialog()V

    .line 441
    :cond_5
    iget-boolean v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mRebootDialogIsActive:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 442
    iput-boolean v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mRebootDialogIsActive:Z

    .line 443
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->savePreferences()V

    .line 444
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->RebootDialog()V

    goto :goto_0
.end method

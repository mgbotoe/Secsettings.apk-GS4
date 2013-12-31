.class public Lcom/android/settings/ModePreviewTablet;
.super Lcom/android/internal/app/AlertActivity;
.source "ModePreviewTablet.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field public static mModePreviewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mPackageName:[Ljava/lang/String;


# instance fields
.field private mAutomatic:Landroid/widget/CheckedTextView;

.field mCurrentSelection:I

.field private mGuideDialog:Landroid/app/AlertDialog;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListView:Landroid/widget/ListView;

.field private mModePreviewAdapter:Lcom/android/settings/ModePreviewAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/ModePreviewTablet;->mModePreviewList:Ljava/util/ArrayList;

    .line 84
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.sec.android.gallery3d"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.sec.android.app.camera"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.sec.android.app.sbrowser"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.samsung.everglades.video"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "tv.peel.samsung.app"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.sec.readershub"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.google.android.apps.books"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/ModePreviewTablet;->mPackageName:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 79
    iput-object v0, p0, Lcom/android/settings/ModePreviewTablet;->mModePreviewAdapter:Lcom/android/settings/ModePreviewAdapter;

    .line 81
    iput-object v0, p0, Lcom/android/settings/ModePreviewTablet;->mGuideDialog:Landroid/app/AlertDialog;

    .line 82
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/ModePreviewTablet;->mCurrentSelection:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ModePreviewTablet;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/settings/ModePreviewTablet;->setEnabledItems(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/ModePreviewTablet;)Landroid/widget/CheckedTextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/ModePreviewTablet;->mAutomatic:Landroid/widget/CheckedTextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/ModePreviewTablet;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method private setEnabledItems(Z)V
    .locals 3
    .parameter "isEnabled"

    .prologue
    .line 189
    iget-object v2, p0, Lcom/android/settings/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, p1}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 190
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 191
    iget-object v2, p0, Lcom/android/settings/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 192
    .local v1, v:Landroid/view/View;
    if-nez p1, :cond_0

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 193
    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 192
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 195
    .end local v1           #v:Landroid/view/View;
    :cond_1
    return-void
.end method


# virtual methods
.method public createGuideDialog(Ljava/lang/String;)V
    .locals 4
    .parameter "pref_noti"

    .prologue
    .line 274
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 276
    .local v1, mSharedPreferences:Landroid/content/SharedPreferences;
    const-string v2, "adapt_noti"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 277
    .local v0, do_not_show_again:Z
    if-nez v0, :cond_0

    .line 278
    invoke-virtual {p0}, Lcom/android/settings/ModePreviewTablet;->showGuideDialog()V

    .line 281
    :cond_0
    return-void
.end method

.method public getCurrentSelection()I
    .locals 3

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_mode_setting"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public makeContentsString()Ljava/lang/String;
    .locals 10

    .prologue
    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 319
    .local v0, b:Ljava/lang/StringBuilder;
    sget-object v7, Lcom/android/settings/ModePreviewTablet;->mPackageName:[Ljava/lang/String;

    array-length v5, v7

    .line 320
    .local v5, length:I
    invoke-virtual {p0}, Lcom/android/settings/ModePreviewTablet;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 321
    .local v6, pm:Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    .line 322
    .local v4, info:Landroid/content/pm/ApplicationInfo;
    const/4 v1, 0x0

    .line 324
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v5, :cond_1

    .line 326
    :try_start_0
    sget-object v7, Lcom/android/settings/ModePreviewTablet;->mPackageName:[Ljava/lang/String;

    aget-object v7, v7, v3

    const/16 v8, 0x80

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 327
    if-lez v1, :cond_0

    .line 328
    const-string v7, "\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    add-int/lit8 v1, v1, 0x1

    .line 324
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 331
    :catch_0
    move-exception v2

    .line 332
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "ModePreview"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Package not found : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/settings/ModePreviewTablet;->mPackageName:[Ljava/lang/String;

    aget-object v9, v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 335
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v0, 0x1

    .line 241
    packed-switch p2, :pswitch_data_0

    .line 259
    :goto_0
    return-void

    .line 243
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_mode_automatic_setting"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/android/settings/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    .line 248
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/ModePreviewTablet;->finish()V

    goto :goto_0

    .line 246
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_mode_setting"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    goto :goto_1

    .line 253
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_mode_automatic_setting"

    iget-object v3, p0, Lcom/android/settings/ModePreviewTablet;->mAutomatic:Landroid/widget/CheckedTextView;

    invoke-virtual {v3}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_2
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 255
    invoke-virtual {p0}, Lcom/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_mode_setting"

    iget-object v2, p0, Lcom/android/settings/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 256
    invoke-virtual {p0}, Lcom/android/settings/ModePreviewTablet;->finish()V

    goto :goto_0

    .line 253
    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .line 241
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 96
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 98
    sget-object v3, Lcom/android/settings/ModePreviewTablet;->mModePreviewList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 99
    sget-object v3, Lcom/android/settings/ModePreviewTablet;->mModePreviewList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/settings/ModePreviewTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090b6c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    sget-object v3, Lcom/android/settings/ModePreviewTablet;->mModePreviewList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/settings/ModePreviewTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090b6d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    sget-object v3, Lcom/android/settings/ModePreviewTablet;->mModePreviewList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/settings/ModePreviewTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090b6f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    sget-object v3, Lcom/android/settings/ModePreviewTablet;->mModePreviewList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/settings/ModePreviewTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090b6e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v3, p0, Lcom/android/settings/ModePreviewTablet;->mModePreviewAdapter:Lcom/android/settings/ModePreviewAdapter;

    if-nez v3, :cond_0

    .line 111
    new-instance v3, Lcom/android/settings/ModePreviewAdapter;

    sget-object v4, Lcom/android/settings/ModePreviewTablet;->mModePreviewList:Ljava/util/ArrayList;

    invoke-direct {v3, p0, v6, v6, v4}, Lcom/android/settings/ModePreviewAdapter;-><init>(Landroid/content/Context;IILjava/util/ArrayList;)V

    iput-object v3, p0, Lcom/android/settings/ModePreviewTablet;->mModePreviewAdapter:Lcom/android/settings/ModePreviewAdapter;

    .line 114
    :cond_0
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/android/settings/ModePreviewTablet;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    iput-object v3, p0, Lcom/android/settings/ModePreviewTablet;->mInflater:Landroid/view/LayoutInflater;

    .line 116
    iget-object v0, p0, Lcom/android/settings/ModePreviewTablet;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 118
    .local v0, ap:Lcom/android/internal/app/AlertController$AlertParams;
    invoke-virtual {p0}, Lcom/android/settings/ModePreviewTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090b6a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 119
    iget-object v3, p0, Lcom/android/settings/ModePreviewTablet;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0400e1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 120
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 121
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 122
    const v3, 0x7f090173

    invoke-virtual {p0, v3}, Lcom/android/settings/ModePreviewTablet;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 123
    const v3, 0x7f090ada

    invoke-virtual {p0, v3}, Lcom/android/settings/ModePreviewTablet;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 125
    iget-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v4, 0x7f0b0148

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/android/settings/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    .line 126
    iget-object v3, p0, Lcom/android/settings/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 127
    iget-object v3, p0, Lcom/android/settings/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/settings/ModePreviewTablet;->mModePreviewAdapter:Lcom/android/settings/ModePreviewAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 128
    iget-object v3, p0, Lcom/android/settings/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/ModePreviewTablet;->setupAlert()V

    .line 132
    iget-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v4, 0x7f0b024d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckedTextView;

    iput-object v3, p0, Lcom/android/settings/ModePreviewTablet;->mAutomatic:Landroid/widget/CheckedTextView;

    .line 133
    iget-object v3, p0, Lcom/android/settings/ModePreviewTablet;->mAutomatic:Landroid/widget/CheckedTextView;

    const v4, 0x1030042

    invoke-virtual {v3, p0, v4}, Landroid/widget/CheckedTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 134
    iget-object v3, p0, Lcom/android/settings/ModePreviewTablet;->mAutomatic:Landroid/widget/CheckedTextView;

    invoke-virtual {v3, v6}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    .line 135
    iget-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v4, 0x7f0b024e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 136
    .local v2, mDivider:Landroid/view/View;
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 138
    if-eqz p1, :cond_1

    .line 139
    const-string v3, "auto_state"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 143
    .local v1, isChecked:I
    :goto_0
    if-ne v1, v7, :cond_2

    .line 144
    iget-object v3, p0, Lcom/android/settings/ModePreviewTablet;->mAutomatic:Landroid/widget/CheckedTextView;

    invoke-virtual {v3, v7}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 145
    iget-object v3, p0, Lcom/android/settings/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    new-instance v4, Lcom/android/settings/ModePreviewTablet$1;

    invoke-direct {v4, p0}, Lcom/android/settings/ModePreviewTablet$1;-><init>(Lcom/android/settings/ModePreviewTablet;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 160
    :goto_1
    iget-object v3, p0, Lcom/android/settings/ModePreviewTablet;->mAutomatic:Landroid/widget/CheckedTextView;

    new-instance v4, Lcom/android/settings/ModePreviewTablet$3;

    invoke-direct {v4, p0}, Lcom/android/settings/ModePreviewTablet$3;-><init>(Lcom/android/settings/ModePreviewTablet;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    invoke-virtual {p0}, Lcom/android/settings/ModePreviewTablet;->getCurrentSelection()I

    move-result v3

    iput v3, p0, Lcom/android/settings/ModePreviewTablet;->mCurrentSelection:I

    .line 179
    iget v3, p0, Lcom/android/settings/ModePreviewTablet;->mCurrentSelection:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 180
    const-string v3, "ModePreview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate() positoin : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/ModePreviewTablet;->mCurrentSelection:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v3, p0, Lcom/android/settings/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    iget v4, p0, Lcom/android/settings/ModePreviewTablet;->mCurrentSelection:I

    invoke-virtual {v3, v4, v7}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 182
    iget-object v3, p0, Lcom/android/settings/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    iget v4, p0, Lcom/android/settings/ModePreviewTablet;->mCurrentSelection:I

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 185
    :goto_2
    return-void

    .line 141
    .end local v1           #isChecked:I
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_mode_automatic_setting"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .restart local v1       #isChecked:I
    goto :goto_0

    .line 152
    :cond_2
    iget-object v3, p0, Lcom/android/settings/ModePreviewTablet;->mAutomatic:Landroid/widget/CheckedTextView;

    invoke-virtual {v3, v6}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 153
    iget-object v3, p0, Lcom/android/settings/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    new-instance v4, Lcom/android/settings/ModePreviewTablet$2;

    invoke-direct {v4, p0}, Lcom/android/settings/ModePreviewTablet$2;-><init>(Lcom/android/settings/ModePreviewTablet;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 184
    :cond_3
    const-string v3, "ModePreview"

    const-string v4, "onCreate() positoin : -1"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/android/settings/ModePreviewTablet;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_mode_setting"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 232
    .local v0, currentValue:I
    iget-object v1, p0, Lcom/android/settings/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 233
    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    .line 236
    .end local v0           #currentValue:I
    :cond_0
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 237
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 220
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-static {p3}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    .line 221
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 263
    const/4 v0, 0x4

    if-ne v0, p1, :cond_0

    .line 264
    invoke-virtual {p0}, Lcom/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_mode_automatic_setting"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 265
    iget-object v0, p0, Lcom/android/settings/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    .line 270
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/app/AlertActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 267
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_mode_setting"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 206
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    .line 207
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 200
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 201
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 212
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 214
    const-string v1, "auto_state"

    iget-object v0, p0, Lcom/android/settings/ModePreviewTablet;->mAutomatic:Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 216
    return-void

    .line 214
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showGuideDialog()V
    .locals 11

    .prologue
    const/4 v8, 0x0

    .line 285
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 288
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 289
    .local v4, mSharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 291
    .local v1, edit:Landroid/content/SharedPreferences$Editor;
    iget-object v7, p0, Lcom/android/settings/ModePreviewTablet;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v7, :cond_0

    .line 292
    iget-object v7, p0, Lcom/android/settings/ModePreviewTablet;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->dismiss()V

    .line 293
    iput-object v8, p0, Lcom/android/settings/ModePreviewTablet;->mGuideDialog:Landroid/app/AlertDialog;

    .line 296
    :cond_0
    const-string v7, "layout_inflater"

    invoke-virtual {p0, v7}, Lcom/android/settings/ModePreviewTablet;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 297
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v7, 0x7f040119

    invoke-virtual {v2, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 298
    .local v3, layout:Landroid/view/View;
    const v7, 0x7f0b0315

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 299
    .local v6, tv:Landroid/widget/TextView;
    const v7, 0x7f090b80

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/settings/ModePreviewTablet;->makeContentsString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {p0, v7, v8}, Lcom/android/settings/ModePreviewTablet;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    const v7, 0x7f0b0138

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 303
    .local v5, mcheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 304
    const v7, 0x7f090b7d

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 306
    const v7, 0x104000a

    new-instance v8, Lcom/android/settings/ModePreviewTablet$4;

    invoke-direct {v8, p0, v1, v5}, Lcom/android/settings/ModePreviewTablet$4;-><init>(Lcom/android/settings/ModePreviewTablet;Landroid/content/SharedPreferences$Editor;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 313
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/ModePreviewTablet;->mGuideDialog:Landroid/app/AlertDialog;

    .line 314
    iget-object v7, p0, Lcom/android/settings/ModePreviewTablet;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    .line 315
    return-void
.end method

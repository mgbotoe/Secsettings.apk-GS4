.class public Lcom/android/settings/flipfont/FontListAdapter;
.super Landroid/widget/BaseAdapter;
.source "FontListAdapter.java"


# static fields
.field private static mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;


# instance fields
.field context:Landroid/content/Context;

.field private droidSansFont:Landroid/graphics/Typeface;

.field public mFontAssetManager:Landroid/content/res/AssetManager;

.field public mFontNames:Ljava/util/Vector;

.field public mFontPackageNames:Ljava/util/Vector;

.field mInflater:Landroid/view/LayoutInflater;

.field public mInstalledApplications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mPackageManager:Landroid/content/pm/PackageManager;

.field public mTypefaceFiles:Ljava/util/Vector;

.field public mTypefaceFinder:Lcom/android/settings/flipfont/TypefaceFinder;

.field private mTypefaces:Ljava/util/Vector;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    .line 146
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 56
    iput-object v7, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    .line 59
    iput-object v7, p0, Lcom/android/settings/flipfont/FontListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 62
    iput-object v7, p0, Lcom/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 65
    iput-object v7, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;

    .line 68
    new-instance v6, Lcom/android/settings/flipfont/TypefaceFinder;

    invoke-direct {v6}, Lcom/android/settings/flipfont/TypefaceFinder;-><init>()V

    iput-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFinder:Lcom/android/settings/flipfont/TypefaceFinder;

    .line 71
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    iput-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    .line 74
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    iput-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    .line 77
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    iput-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    .line 80
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    iput-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/Vector;

    .line 94
    iput-object v7, p0, Lcom/android/settings/flipfont/FontListAdapter;->droidSansFont:Landroid/graphics/Typeface;

    .line 147
    iput-object p1, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    .line 148
    iget-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFinder:Lcom/android/settings/flipfont/TypefaceFinder;

    iput-object p1, v6, Lcom/android/settings/flipfont/TypefaceFinder;->context:Landroid/content/Context;

    .line 149
    const-string v6, "layout_inflater"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    iput-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 152
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 155
    :try_start_0
    iget-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v7, 0x80

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->mInstalledApplications:Ljava/util/List;

    .line 158
    const/4 v3, 0x0

    .line 159
    .local v3, fontPackageName:Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    iget-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->mInstalledApplications:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_1

    .line 160
    iget-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->mInstalledApplications:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ApplicationInfo;

    iget-object v3, v6, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 161
    const-string v6, "com.monotype.android.font."

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 162
    iget-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v7, 0x80

    invoke-virtual {v6, v3, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 163
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v6, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 164
    iget-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v5

    .line 166
    .local v5, res:Landroid/content/res/Resources;
    invoke-virtual {v5}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;

    .line 167
    iget-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFinder:Lcom/android/settings/flipfont/TypefaceFinder;

    iget-object v7, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;

    invoke-virtual {v6, v7, v3}, Lcom/android/settings/flipfont/TypefaceFinder;->findTypefaces(Landroid/content/res/AssetManager;Ljava/lang/String;)Z

    .line 159
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v5           #res:Landroid/content/res/Resources;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 171
    :cond_1
    iget-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFinder:Lcom/android/settings/flipfont/TypefaceFinder;

    iget-object v7, p0, Lcom/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v8, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    iget-object v9, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    iget-object v10, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/settings/flipfont/TypefaceFinder;->getSansEntries(Landroid/content/pm/PackageManager;Ljava/util/Vector;Ljava/util/Vector;Ljava/util/Vector;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .end local v3           #fontPackageName:Ljava/lang/String;
    .end local v4           #i:I
    :goto_1
    new-instance v2, Ljava/io/File;

    const-string v6, "/system/fonts/UIFont.ttf"

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 181
    .local v2, f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 182
    const-string v6, "/system/fonts/UIFont.ttf"

    invoke-static {v6}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->droidSansFont:Landroid/graphics/Typeface;

    .line 187
    :goto_2
    return-void

    .line 174
    .end local v2           #f:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 176
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "FontListAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "font package not found, just use default font, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 185
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #f:Ljava/io/File;
    :cond_2
    const-string v6, "/system/fonts/DroidSans.ttf"

    invoke-static {v6}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->droidSansFont:Landroid/graphics/Typeface;

    goto :goto_2
.end method

.method public static destroyInstance()V
    .locals 1

    .prologue
    .line 138
    sget-object v0, Lcom/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    if-eqz v0, :cond_0

    .line 139
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    .line 141
    :cond_0
    return-void
.end method

.method private getFont(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 8
    .parameter "typeface"
    .parameter "fontPackageName"

    .prologue
    .line 426
    const-string v5, ".xml"

    const-string v6, ".ttf"

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 429
    .local v2, fontName:Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v6, 0x80

    invoke-virtual {v5, p2, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 430
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v5, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 431
    iget-object v5, p0, Lcom/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v4

    .line 433
    .local v4, res:Landroid/content/res/Resources;
    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    :try_start_1
    iget-object v5, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fonts/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 443
    .local v3, is:Ljava/io/InputStream;
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 448
    iget-object v5, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fonts/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v3           #is:Ljava/io/InputStream;
    .end local v4           #res:Landroid/content/res/Resources;
    :goto_0
    return-object v5

    .line 435
    :catch_0
    move-exception v1

    .line 437
    .local v1, e:Ljava/lang/Exception;
    const/4 v5, 0x0

    goto :goto_0

    .line 444
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #appInfo:Landroid/content/pm/ApplicationInfo;
    .restart local v4       #res:Landroid/content/res/Resources;
    :catch_1
    move-exception v1

    .line 445
    .local v1, e:Ljava/io/IOException;
    invoke-direct {p0, v2, p2}, Lcom/android/settings/flipfont/FontListAdapter;->getFontfromCR(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    goto :goto_0
.end method

.method private getFontfromCR(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 15
    .parameter "sFont"
    .parameter "sPackageName"

    .prologue
    .line 346
    const/4 v2, 0x0

    .line 348
    .local v2, cr:Landroid/content/ContentResolver;
    :try_start_0
    iget-object v13, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 354
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "content://"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/fonts/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 355
    .local v12, uriFont:Landroid/net/Uri;
    const/4 v7, 0x0

    .line 357
    .local v7, isFont:Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v2, v12}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v7

    .line 363
    const/4 v6, 0x0

    .line 365
    .local v6, fTemp:Ljava/io/File;
    :try_start_2
    const-string v13, "font"

    const/4 v14, 0x0

    invoke-static {v13, v14}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v6

    .line 375
    const/4 v4, 0x0

    .line 376
    .local v4, fOut:Ljava/io/FileOutputStream;
    const/4 v8, 0x0

    .line 378
    .local v8, os:Ljava/io/BufferedOutputStream;
    :try_start_3
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_14
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 379
    .end local v4           #fOut:Ljava/io/FileOutputStream;
    .local v5, fOut:Ljava/io/FileOutputStream;
    :try_start_4
    new-instance v9, Ljava/io/BufferedOutputStream;

    invoke-direct {v9, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_15
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_12

    .line 381
    .end local v8           #os:Ljava/io/BufferedOutputStream;
    .local v9, os:Ljava/io/BufferedOutputStream;
    const/16 v13, 0x400

    :try_start_5
    new-array v1, v13, [B

    .line 383
    .local v1, b:[B
    const/4 v10, 0x0

    .line 384
    .local v10, read:I
    :goto_0
    invoke-virtual {v7, v1}, Ljava/io/InputStream;->read([B)I

    move-result v10

    if-lez v10, :cond_3

    .line 385
    const/4 v13, 0x0

    invoke-virtual {v9, v1, v13, v10}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_13

    goto :goto_0

    .line 390
    .end local v1           #b:[B
    .end local v10           #read:I
    :catch_0
    move-exception v3

    move-object v8, v9

    .end local v9           #os:Ljava/io/BufferedOutputStream;
    .restart local v8       #os:Ljava/io/BufferedOutputStream;
    move-object v4, v5

    .line 391
    .end local v5           #fOut:Ljava/io/FileOutputStream;
    .local v3, e:Ljava/io/FileNotFoundException;
    .restart local v4       #fOut:Ljava/io/FileOutputStream;
    :goto_1
    const/4 v11, 0x0

    .line 395
    if-eqz v8, :cond_0

    .line 397
    :try_start_6
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_a

    .line 400
    :cond_0
    :goto_2
    if-eqz v4, :cond_1

    .line 402
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_b

    .line 405
    :cond_1
    :goto_3
    if-eqz v7, :cond_2

    .line 407
    :try_start_8
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_c

    .line 416
    .end local v3           #e:Ljava/io/FileNotFoundException;
    .end local v4           #fOut:Ljava/io/FileOutputStream;
    .end local v6           #fTemp:Ljava/io/File;
    .end local v7           #isFont:Ljava/io/InputStream;
    .end local v8           #os:Ljava/io/BufferedOutputStream;
    .end local v12           #uriFont:Landroid/net/Uri;
    :cond_2
    :goto_4
    return-object v11

    .line 349
    :catch_1
    move-exception v3

    .line 350
    .local v3, e:Ljava/lang/Exception;
    const/4 v11, 0x0

    goto :goto_4

    .line 358
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v7       #isFont:Ljava/io/InputStream;
    .restart local v12       #uriFont:Landroid/net/Uri;
    :catch_2
    move-exception v3

    .line 359
    .restart local v3       #e:Ljava/lang/Exception;
    const/4 v11, 0x0

    goto :goto_4

    .line 366
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v6       #fTemp:Ljava/io/File;
    :catch_3
    move-exception v3

    .line 368
    .local v3, e:Ljava/io/IOException;
    :try_start_9
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 371
    :goto_5
    const/4 v11, 0x0

    goto :goto_4

    .line 387
    .end local v3           #e:Ljava/io/IOException;
    .restart local v1       #b:[B
    .restart local v5       #fOut:Ljava/io/FileOutputStream;
    .restart local v9       #os:Ljava/io/BufferedOutputStream;
    .restart local v10       #read:I
    :cond_3
    :try_start_a
    invoke-virtual {v9}, Ljava/io/BufferedOutputStream;->flush()V

    .line 388
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_13

    .line 395
    if-eqz v9, :cond_4

    .line 397
    :try_start_b
    invoke-virtual {v9}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 400
    :cond_4
    :goto_6
    if-eqz v5, :cond_5

    .line 402
    :try_start_c
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 405
    :cond_5
    :goto_7
    if-eqz v7, :cond_6

    .line 407
    :try_start_d
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 413
    :cond_6
    :goto_8
    invoke-static {v6}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v11

    .line 414
    .local v11, tf:Landroid/graphics/Typeface;
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    goto :goto_4

    .line 392
    .end local v1           #b:[B
    .end local v5           #fOut:Ljava/io/FileOutputStream;
    .end local v9           #os:Ljava/io/BufferedOutputStream;
    .end local v10           #read:I
    .end local v11           #tf:Landroid/graphics/Typeface;
    .restart local v4       #fOut:Ljava/io/FileOutputStream;
    .restart local v8       #os:Ljava/io/BufferedOutputStream;
    :catch_4
    move-exception v3

    .line 393
    .restart local v3       #e:Ljava/io/IOException;
    :goto_9
    const/4 v11, 0x0

    .line 395
    if-eqz v8, :cond_7

    .line 397
    :try_start_e
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_d

    .line 400
    :cond_7
    :goto_a
    if-eqz v4, :cond_8

    .line 402
    :try_start_f
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_e

    .line 405
    :cond_8
    :goto_b
    if-eqz v7, :cond_2

    .line 407
    :try_start_10
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_5

    goto :goto_4

    .line 408
    :catch_5
    move-exception v13

    goto :goto_4

    .line 395
    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v13

    :goto_c
    if-eqz v8, :cond_9

    .line 397
    :try_start_11
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_f

    .line 400
    :cond_9
    :goto_d
    if-eqz v4, :cond_a

    .line 402
    :try_start_12
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_10

    .line 405
    :cond_a
    :goto_e
    if-eqz v7, :cond_b

    .line 407
    :try_start_13
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_11

    .line 408
    :cond_b
    :goto_f
    throw v13

    .line 369
    .end local v4           #fOut:Ljava/io/FileOutputStream;
    .end local v8           #os:Ljava/io/BufferedOutputStream;
    .restart local v3       #e:Ljava/io/IOException;
    :catch_6
    move-exception v13

    goto :goto_5

    .line 398
    .end local v3           #e:Ljava/io/IOException;
    .restart local v1       #b:[B
    .restart local v5       #fOut:Ljava/io/FileOutputStream;
    .restart local v9       #os:Ljava/io/BufferedOutputStream;
    .restart local v10       #read:I
    :catch_7
    move-exception v13

    goto :goto_6

    .line 403
    :catch_8
    move-exception v13

    goto :goto_7

    .line 408
    :catch_9
    move-exception v13

    goto :goto_8

    .line 398
    .end local v1           #b:[B
    .end local v5           #fOut:Ljava/io/FileOutputStream;
    .end local v9           #os:Ljava/io/BufferedOutputStream;
    .end local v10           #read:I
    .local v3, e:Ljava/io/FileNotFoundException;
    .restart local v4       #fOut:Ljava/io/FileOutputStream;
    .restart local v8       #os:Ljava/io/BufferedOutputStream;
    :catch_a
    move-exception v13

    goto :goto_2

    .line 403
    :catch_b
    move-exception v13

    goto :goto_3

    .line 408
    :catch_c
    move-exception v13

    goto :goto_4

    .line 398
    .local v3, e:Ljava/io/IOException;
    :catch_d
    move-exception v13

    goto :goto_a

    .line 403
    :catch_e
    move-exception v13

    goto :goto_b

    .line 398
    .end local v3           #e:Ljava/io/IOException;
    :catch_f
    move-exception v14

    goto :goto_d

    .line 403
    :catch_10
    move-exception v14

    goto :goto_e

    .line 408
    :catch_11
    move-exception v14

    goto :goto_f

    .line 395
    .end local v4           #fOut:Ljava/io/FileOutputStream;
    .restart local v5       #fOut:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v13

    move-object v4, v5

    .end local v5           #fOut:Ljava/io/FileOutputStream;
    .restart local v4       #fOut:Ljava/io/FileOutputStream;
    goto :goto_c

    .end local v4           #fOut:Ljava/io/FileOutputStream;
    .end local v8           #os:Ljava/io/BufferedOutputStream;
    .restart local v5       #fOut:Ljava/io/FileOutputStream;
    .restart local v9       #os:Ljava/io/BufferedOutputStream;
    :catchall_2
    move-exception v13

    move-object v8, v9

    .end local v9           #os:Ljava/io/BufferedOutputStream;
    .restart local v8       #os:Ljava/io/BufferedOutputStream;
    move-object v4, v5

    .end local v5           #fOut:Ljava/io/FileOutputStream;
    .restart local v4       #fOut:Ljava/io/FileOutputStream;
    goto :goto_c

    .line 392
    .end local v4           #fOut:Ljava/io/FileOutputStream;
    .restart local v5       #fOut:Ljava/io/FileOutputStream;
    :catch_12
    move-exception v3

    move-object v4, v5

    .end local v5           #fOut:Ljava/io/FileOutputStream;
    .restart local v4       #fOut:Ljava/io/FileOutputStream;
    goto :goto_9

    .end local v4           #fOut:Ljava/io/FileOutputStream;
    .end local v8           #os:Ljava/io/BufferedOutputStream;
    .restart local v5       #fOut:Ljava/io/FileOutputStream;
    .restart local v9       #os:Ljava/io/BufferedOutputStream;
    :catch_13
    move-exception v3

    move-object v8, v9

    .end local v9           #os:Ljava/io/BufferedOutputStream;
    .restart local v8       #os:Ljava/io/BufferedOutputStream;
    move-object v4, v5

    .end local v5           #fOut:Ljava/io/FileOutputStream;
    .restart local v4       #fOut:Ljava/io/FileOutputStream;
    goto :goto_9

    .line 390
    :catch_14
    move-exception v3

    goto/16 :goto_1

    .end local v4           #fOut:Ljava/io/FileOutputStream;
    .restart local v5       #fOut:Ljava/io/FileOutputStream;
    :catch_15
    move-exception v3

    move-object v4, v5

    .end local v5           #fOut:Ljava/io/FileOutputStream;
    .restart local v4       #fOut:Ljava/io/FileOutputStream;
    goto/16 :goto_1
.end method

.method public static getInstanceFontListAdapter(Landroid/content/Context;)Lcom/android/settings/flipfont/FontListAdapter;
    .locals 1
    .parameter "context"

    .prologue
    .line 132
    sget-object v0, Lcom/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Lcom/android/settings/flipfont/FontListAdapter;

    invoke-direct {v0, p0}, Lcom/android/settings/flipfont/FontListAdapter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    .line 135
    :cond_0
    sget-object v0, Lcom/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    return-object v0
.end method

.method private setFont(ILandroid/widget/TextView;)V
    .locals 2
    .parameter "position"
    .parameter "textView"

    .prologue
    .line 300
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    .line 301
    .local v0, fontTypeface:Landroid/graphics/Typeface;
    if-eqz v0, :cond_0

    .line 302
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 304
    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getFontName(I)Ljava/lang/String;
    .locals 5
    .parameter "position"

    .prologue
    const v4, 0x7f090a76

    const v3, 0x7f090a75

    const v2, 0x7f090a74

    .line 218
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 219
    .local v0, tmpString:Ljava/lang/String;
    const-string v1, "Cool"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 220
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0           #tmpString:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 259
    .restart local v0       #tmpString:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 221
    :cond_1
    const-string v1, "Rose"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 222
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0           #tmpString:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0       #tmpString:Ljava/lang/String;
    goto :goto_0

    .line 223
    :cond_2
    const-string v1, "Choco"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 224
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0           #tmpString:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0       #tmpString:Ljava/lang/String;
    goto :goto_0

    .line 226
    :cond_3
    const-string v1, "Rosemary"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 227
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0           #tmpString:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0       #tmpString:Ljava/lang/String;
    goto :goto_0

    .line 228
    :cond_4
    const-string v1, "Choco cooky"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 229
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0           #tmpString:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0       #tmpString:Ljava/lang/String;
    goto :goto_0

    .line 231
    :cond_5
    const-string v1, "Cool jazz"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 232
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0           #tmpString:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0       #tmpString:Ljava/lang/String;
    goto :goto_0

    .line 233
    :cond_6
    const-string v1, "Samsung sans"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 234
    const-string v0, "Samsung Sans"

    goto :goto_0

    .line 235
    :cond_7
    const-string v1, "Apple mint"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 236
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090a77

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0           #tmpString:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0       #tmpString:Ljava/lang/String;
    goto/16 :goto_0

    .line 238
    :cond_8
    const-string v1, "Tinker bell"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 239
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090a78

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0           #tmpString:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0       #tmpString:Ljava/lang/String;
    goto/16 :goto_0

    .line 241
    :cond_9
    const-string v1, "Shao nv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 242
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0910d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0           #tmpString:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0       #tmpString:Ljava/lang/String;
    goto/16 :goto_0

    .line 244
    :cond_a
    const-string v1, "Kaiti"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 245
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0910d3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0           #tmpString:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0       #tmpString:Ljava/lang/String;
    goto/16 :goto_0

    .line 247
    :cond_b
    const-string v1, "Miao"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 248
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0910d4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0           #tmpString:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0       #tmpString:Ljava/lang/String;
    goto/16 :goto_0

    .line 250
    :cond_c
    const-string v1, "Maruberi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 251
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090a7a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0           #tmpString:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0       #tmpString:Ljava/lang/String;
    goto/16 :goto_0

    .line 253
    :cond_d
    const-string v1, "Mincho"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 254
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090a7b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0           #tmpString:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0       #tmpString:Ljava/lang/String;
    goto/16 :goto_0

    .line 256
    :cond_e
    const-string v1, "Pop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 257
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090a7c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0           #tmpString:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0       #tmpString:Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 209
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 277
    iget-object v5, p0, Lcom/android/settings/flipfont/FontListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f040189

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 278
    const v5, 0x1020014

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 279
    .local v3, v:Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/android/settings/flipfont/FontListAdapter;->getFontName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    invoke-direct {p0, p1, v3}, Lcom/android/settings/flipfont/FontListAdapter;->setFont(ILandroid/widget/TextView;)V

    .line 282
    const/high16 v5, 0x41a0

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 284
    iget-object v5, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 285
    .local v4, wm:Landroid/view/WindowManager;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 286
    .local v1, metrics:Landroid/util/DisplayMetrics;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 287
    iget v0, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 289
    .local v0, density:I
    const/high16 v5, 0x4282

    int-to-float v6, v0

    const/high16 v7, 0x4320

    div-float/2addr v6, v7

    mul-float/2addr v5, v6

    float-to-int v2, v5

    .line 290
    .local v2, pixelHeight:I
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setHeight(I)V

    .line 292
    return-object v3
.end method

.method public loadTypefaces()V
    .locals 6

    .prologue
    .line 311
    const/4 v1, 0x0

    .line 312
    .local v1, fontfile:Ljava/lang/String;
    const/4 v0, 0x0

    .line 313
    .local v0, fontPackageName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 315
    .local v3, newTypeface:Landroid/graphics/Typeface;
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/Vector;

    iget-object v5, p0, Lcom/android/settings/flipfont/FontListAdapter;->droidSansFont:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 317
    const/4 v2, 0x1

    .line 318
    .local v2, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 319
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 320
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 321
    invoke-direct {p0, v1, v0}, Lcom/android/settings/flipfont/FontListAdapter;->getFont(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    .line 324
    if-nez v3, :cond_0

    .line 327
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 328
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 329
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 334
    :cond_0
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 335
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 338
    :cond_1
    return-void
.end method

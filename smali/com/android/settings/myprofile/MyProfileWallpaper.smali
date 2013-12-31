.class public Lcom/android/settings/myprofile/MyProfileWallpaper;
.super Ljava/lang/Object;
.source "MyProfileWallpaper.java"


# instance fields
.field private final DBG:Z

.field private final PORTRAIT_WALLPAPER_IMAGE_PATH:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mIsMultiSIMDevice:Lcom/android/settings/myprofile/MyProfileMultiSimUtils;

.field private mLockScreenWallpaperImage:Landroid/graphics/drawable/Drawable;

.field private mWallpaperPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, "WallpaperWidget"

    iput-object v0, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->TAG:Ljava/lang/String;

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->DBG:Z

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->mLockScreenWallpaperImage:Landroid/graphics/drawable/Drawable;

    .line 33
    const-string v0, "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper.jpg"

    iput-object v0, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->PORTRAIT_WALLPAPER_IMAGE_PATH:Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->mContext:Landroid/content/Context;

    .line 41
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileWallpaper;->setLockScreenWallpaper()V

    .line 42
    return-void
.end method

.method private setDefaultWallpaper()Landroid/graphics/drawable/BitmapDrawable;
    .locals 10

    .prologue
    const v9, 0x10804b4

    .line 97
    new-instance v1, Ljava/io/File;

    const-string v8, "//system/wallpaper/lockscreen_default_wallpaper.jpg"

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    .local v1, file:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v8, "//system/csc_contents/lockscreen_default_wallpaper.jpg"

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 99
    .local v2, fileMultiCSC:Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string v8, "//system/wallpaper/lockscreen_default_wallpaper.png"

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    .local v4, filePng:Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v8, "//system/csc_contents/lockscreen_default_wallpaper.png"

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 101
    .local v3, fileMultiCSCPng:Ljava/io/File;
    const/4 v5, 0x0

    .line 102
    .local v5, is:Ljava/io/InputStream;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 104
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    .end local v5           #is:Ljava/io/InputStream;
    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .restart local v5       #is:Ljava/io/InputStream;
    :goto_0
    const/4 v7, 0x0

    .line 129
    .local v7, tempBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v5, :cond_0

    .line 130
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    .end local v7           #tempBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v8, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-direct {v7, v8, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    .line 132
    .restart local v7       #tempBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 137
    :cond_0
    :goto_1
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    if-nez v8, :cond_1

    .line 138
    const/4 v7, 0x0

    .line 139
    .end local v7           #tempBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :cond_1
    return-object v7

    .line 105
    .end local v5           #is:Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 106
    .local v0, e:Ljava/io/IOException;
    iget-object v8, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    .line 107
    .restart local v5       #is:Ljava/io/InputStream;
    goto :goto_0

    .line 108
    .end local v0           #e:Ljava/io/IOException;
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 110
    :try_start_2
    new-instance v5, Ljava/io/FileInputStream;

    .end local v5           #is:Ljava/io/InputStream;
    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .restart local v5       #is:Ljava/io/InputStream;
    goto :goto_0

    .line 111
    .end local v5           #is:Ljava/io/InputStream;
    :catch_1
    move-exception v0

    .line 112
    .restart local v0       #e:Ljava/io/IOException;
    iget-object v8, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    .line 113
    .restart local v5       #is:Ljava/io/InputStream;
    goto :goto_0

    .line 114
    .end local v0           #e:Ljava/io/IOException;
    :cond_3
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 116
    :try_start_3
    new-instance v5, Ljava/io/FileInputStream;

    .end local v5           #is:Ljava/io/InputStream;
    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .restart local v5       #is:Ljava/io/InputStream;
    goto :goto_0

    .line 117
    .end local v5           #is:Ljava/io/InputStream;
    :catch_2
    move-exception v0

    .line 118
    .restart local v0       #e:Ljava/io/IOException;
    iget-object v8, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    .line 119
    .restart local v5       #is:Ljava/io/InputStream;
    goto :goto_0

    .line 120
    .end local v0           #e:Ljava/io/IOException;
    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 122
    :try_start_4
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .end local v5           #is:Ljava/io/InputStream;
    .local v6, is:Ljava/io/InputStream;
    move-object v5, v6

    .line 124
    .end local v6           #is:Ljava/io/InputStream;
    .restart local v5       #is:Ljava/io/InputStream;
    goto :goto_0

    .line 126
    :cond_5
    iget-object v8, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    goto :goto_0

    .line 133
    .restart local v7       #tempBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :catch_3
    move-exception v0

    .line 134
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 123
    .end local v0           #e:Ljava/io/IOException;
    .end local v7           #tempBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :catch_4
    move-exception v8

    goto :goto_0
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->mLockScreenWallpaperImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public setLockScreenWallpaper()V
    .locals 7

    .prologue
    .line 55
    invoke-static {}, Lcom/android/settings/myprofile/LockscreenWallpaper;->isAdminWallpaper()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 56
    const-string v4, "/data/system/enterprise/lso/lockscreen_wallpaper.jpg"

    iput-object v4, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->mWallpaperPath:Ljava/lang/String;

    .line 58
    :try_start_0
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->mWallpaperPath:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->mLockScreenWallpaperImage:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 62
    .local v0, ex:Ljava/lang/Exception;
    const-string v4, "WallpaperWidget"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loading Admin wallpaper EX:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_0
    iget-object v4, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lockscreen_wallpaper_path"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->mWallpaperPath:Ljava/lang/String;

    .line 69
    iget-object v4, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->mIsMultiSIMDevice:Lcom/android/settings/myprofile/MyProfileMultiSimUtils;

    invoke-static {}, Lcom/android/settings/myprofile/MyProfileMultiSimUtils;->isMultiSIMDevice()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 70
    iget-object v4, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->mIsMultiSIMDevice:Lcom/android/settings/myprofile/MyProfileMultiSimUtils;

    iget-object v4, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/myprofile/MyProfileMultiSimUtils;->getCurrentWallpaper(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->mWallpaperPath:Ljava/lang/String;

    .line 71
    const-string v4, "WallpaperWidget"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MultiSim Device wallpaperPath:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->mWallpaperPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_1
    iget-object v4, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->mWallpaperPath:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 75
    const-string v4, "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper.jpg"

    iput-object v4, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->mWallpaperPath:Ljava/lang/String;

    .line 78
    :cond_2
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->mWallpaperPath:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    .local v1, file:Ljava/io/File;
    const/4 v2, 0x0

    .line 81
    .local v2, tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 83
    :try_start_1
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->mWallpaperPath:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 84
    .end local v2           #tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    .local v3, tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    :try_start_2
    iput-object v3, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->mLockScreenWallpaperImage:Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v2, v3

    .line 88
    .end local v3           #tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v2       #tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    goto :goto_0

    .line 85
    :catch_1
    move-exception v0

    .line 86
    .restart local v0       #ex:Ljava/lang/Exception;
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileWallpaper;->setDefaultWallpaper()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    .line 87
    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->mLockScreenWallpaperImage:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 90
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileWallpaper;->setDefaultWallpaper()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    .line 91
    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->mLockScreenWallpaperImage:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 85
    .end local v2           #tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v3       #tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    :catch_2
    move-exception v0

    move-object v2, v3

    .end local v3           #tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v2       #tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    goto :goto_1
.end method

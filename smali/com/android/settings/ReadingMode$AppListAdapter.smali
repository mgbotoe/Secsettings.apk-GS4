.class public Lcom/android/settings/ReadingMode$AppListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ReadingMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ReadingMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/content/pm/ActivityInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ReadingMode;


# direct methods
.method public constructor <init>(Lcom/android/settings/ReadingMode;Landroid/content/Context;IILjava/util/List;)V
    .locals 0
    .parameter
    .parameter "c"
    .parameter "resource"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ActivityInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 341
    .local p5, objects:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ActivityInfo;>;"
    iput-object p1, p0, Lcom/android/settings/ReadingMode$AppListAdapter;->this$0:Lcom/android/settings/ReadingMode;

    .line 342
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 344
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    .line 347
    iget-object v4, p0, Lcom/android/settings/ReadingMode$AppListAdapter;->this$0:Lcom/android/settings/ReadingMode;

    invoke-virtual {v4}, Lcom/android/settings/ReadingMode;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 348
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f04014b

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 350
    const v4, 0x7f0b03a4

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 351
    .local v1, appName:Landroid/widget/TextView;
    const v4, 0x7f0b03a3

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 352
    .local v0, appIcon:Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/android/settings/ReadingMode$AppListAdapter;->this$0:Lcom/android/settings/ReadingMode;

    invoke-virtual {v4}, Lcom/android/settings/ReadingMode;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "e_reading_display_mode"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_0

    .line 353
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 354
    const/16 v4, 0x32

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 357
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/ReadingMode$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ActivityInfo;

    iget-object v5, p0, Lcom/android/settings/ReadingMode$AppListAdapter;->this$0:Lcom/android/settings/ReadingMode;

    #getter for: Lcom/android/settings/ReadingMode;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lcom/android/settings/ReadingMode;->access$000(Lcom/android/settings/ReadingMode;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 358
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/settings/ReadingMode$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, p1}, Lcom/android/settings/ReadingMode$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 359
    .local v3, s:Ljava/lang/String;
    const-string v4, "ReadingMode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getView() activityInfo.name : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-virtual {p0, p1}, Lcom/android/settings/ReadingMode$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ActivityInfo;

    iget-object v5, p0, Lcom/android/settings/ReadingMode$AppListAdapter;->this$0:Lcom/android/settings/ReadingMode;

    #getter for: Lcom/android/settings/ReadingMode;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lcom/android/settings/ReadingMode;->access$000(Lcom/android/settings/ReadingMode;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    .end local v3           #s:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/settings/ReadingMode$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ActivityInfo;

    iget-object v5, p0, Lcom/android/settings/ReadingMode$AppListAdapter;->this$0:Lcom/android/settings/ReadingMode;

    #getter for: Lcom/android/settings/ReadingMode;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lcom/android/settings/ReadingMode;->access$000(Lcom/android/settings/ReadingMode;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 364
    invoke-virtual {p0, p1}, Lcom/android/settings/ReadingMode$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ActivityInfo;

    iget-object v5, p0, Lcom/android/settings/ReadingMode$AppListAdapter;->this$0:Lcom/android/settings/ReadingMode;

    #getter for: Lcom/android/settings/ReadingMode;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lcom/android/settings/ReadingMode;->access$000(Lcom/android/settings/ReadingMode;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 365
    :cond_2
    return-object p2
.end method

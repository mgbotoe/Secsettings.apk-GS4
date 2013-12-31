.class public Lcom/android/settings/lockscreenshortcut/ExpandAppList$AppListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ExpandAppList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/lockscreenshortcut/ExpandAppList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private settingName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings/lockscreenshortcut/ExpandAppList;


# direct methods
.method public constructor <init>(Lcom/android/settings/lockscreenshortcut/ExpandAppList;Landroid/content/Context;IILjava/util/List;)V
    .locals 1
    .parameter
    .parameter "context"
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
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 306
    .local p5, objects:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iput-object p1, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList$AppListAdapter;->this$0:Lcom/android/settings/lockscreenshortcut/ExpandAppList;

    .line 307
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 304
    const-string v0, "com.android.settings.Settings"

    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList$AppListAdapter;->settingName:Ljava/lang/String;

    .line 309
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v11, 0x7f0b0278

    const v10, 0x7f0b004f

    const v9, 0x7f0b004e

    const v8, 0x7f04016f

    const/4 v7, 0x0

    .line 313
    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList$AppListAdapter;->this$0:Lcom/android/settings/lockscreenshortcut/ExpandAppList;

    invoke-virtual {v5}, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    .line 316
    .local v4, inflater:Landroid/view/LayoutInflater;
    if-nez p2, :cond_3

    .line 317
    const v5, 0x7f0400cd

    invoke-virtual {v4, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 318
    new-instance v3, Lcom/android/settings/lockscreenshortcut/ExpandAppList$ViewHolder;

    invoke-direct {v3}, Lcom/android/settings/lockscreenshortcut/ExpandAppList$ViewHolder;-><init>()V

    .line 320
    .local v3, holder:Lcom/android/settings/lockscreenshortcut/ExpandAppList$ViewHolder;
    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v3, Lcom/android/settings/lockscreenshortcut/ExpandAppList$ViewHolder;->text:Landroid/widget/TextView;

    .line 321
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v3, Lcom/android/settings/lockscreenshortcut/ExpandAppList$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 323
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 336
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList$AppListAdapter;->this$0:Lcom/android/settings/lockscreenshortcut/ExpandAppList;

    #getter for: Lcom/android/settings/lockscreenshortcut/ExpandAppList;->t_appNo:I
    invoke-static {v5}, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->access$000(Lcom/android/settings/lockscreenshortcut/ExpandAppList;)I

    move-result v5

    const/4 v6, 0x5

    if-lt v5, v6, :cond_7

    .line 337
    if-eqz p1, :cond_1

    const/4 v5, 0x6

    if-ne p1, v5, :cond_5

    .line 338
    :cond_1
    if-nez p1, :cond_4

    .line 339
    invoke-virtual {v4, v8, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 340
    invoke-virtual {p2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 341
    .local v1, appName:Landroid/widget/TextView;
    const v5, 0x7f0910cb

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 387
    :cond_2
    :goto_1
    return-object p2

    .line 327
    .end local v1           #appName:Landroid/widget/TextView;
    .end local v3           #holder:Lcom/android/settings/lockscreenshortcut/ExpandAppList$ViewHolder;
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/lockscreenshortcut/ExpandAppList$ViewHolder;

    .line 328
    .restart local v3       #holder:Lcom/android/settings/lockscreenshortcut/ExpandAppList$ViewHolder;
    if-nez v3, :cond_0

    .line 329
    const v5, 0x7f0400cd

    invoke-virtual {v4, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 330
    new-instance v3, Lcom/android/settings/lockscreenshortcut/ExpandAppList$ViewHolder;

    .end local v3           #holder:Lcom/android/settings/lockscreenshortcut/ExpandAppList$ViewHolder;
    invoke-direct {v3}, Lcom/android/settings/lockscreenshortcut/ExpandAppList$ViewHolder;-><init>()V

    .line 331
    .restart local v3       #holder:Lcom/android/settings/lockscreenshortcut/ExpandAppList$ViewHolder;
    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v3, Lcom/android/settings/lockscreenshortcut/ExpandAppList$ViewHolder;->text:Landroid/widget/TextView;

    .line 332
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v3, Lcom/android/settings/lockscreenshortcut/ExpandAppList$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 333
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 344
    :cond_4
    invoke-virtual {v4, v8, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 345
    invoke-virtual {p2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 346
    .restart local v1       #appName:Landroid/widget/TextView;
    const v5, 0x7f0910cc

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 351
    .end local v1           #appName:Landroid/widget/TextView;
    :cond_5
    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 352
    .restart local v1       #appName:Landroid/widget/TextView;
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 353
    .local v0, appIcon:Landroid/widget/ImageView;
    invoke-virtual {p0, p1}, Lcom/android/settings/lockscreenshortcut/ExpandAppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList$AppListAdapter;->this$0:Lcom/android/settings/lockscreenshortcut/ExpandAppList;

    #getter for: Lcom/android/settings/lockscreenshortcut/ExpandAppList;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v6}, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->access$100(Lcom/android/settings/lockscreenshortcut/ExpandAppList;)Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 354
    invoke-virtual {p0, p1}, Lcom/android/settings/lockscreenshortcut/ExpandAppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v6, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList$AppListAdapter;->this$0:Lcom/android/settings/lockscreenshortcut/ExpandAppList;

    #getter for: Lcom/android/settings/lockscreenshortcut/ExpandAppList;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v6}, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->access$100(Lcom/android/settings/lockscreenshortcut/ExpandAppList;)Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/settings/lockscreenshortcut/ExpandAppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList$AppListAdapter;->this$0:Lcom/android/settings/lockscreenshortcut/ExpandAppList;

    #getter for: Lcom/android/settings/lockscreenshortcut/ExpandAppList;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v6}, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->access$100(Lcom/android/settings/lockscreenshortcut/ExpandAppList;)Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 356
    invoke-virtual {p0, p1}, Lcom/android/settings/lockscreenshortcut/ExpandAppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v6, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList$AppListAdapter;->this$0:Lcom/android/settings/lockscreenshortcut/ExpandAppList;

    #getter for: Lcom/android/settings/lockscreenshortcut/ExpandAppList;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v6}, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->access$100(Lcom/android/settings/lockscreenshortcut/ExpandAppList;)Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 360
    .end local v0           #appIcon:Landroid/widget/ImageView;
    .end local v1           #appName:Landroid/widget/TextView;
    :cond_7
    const/4 v2, 0x0

    .line 361
    .local v2, as:I
    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList$AppListAdapter;->this$0:Lcom/android/settings/lockscreenshortcut/ExpandAppList;

    #getter for: Lcom/android/settings/lockscreenshortcut/ExpandAppList;->t_appNo:I
    invoke-static {v5}, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->access$000(Lcom/android/settings/lockscreenshortcut/ExpandAppList;)I

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList$AppListAdapter;->this$0:Lcom/android/settings/lockscreenshortcut/ExpandAppList;

    #getter for: Lcom/android/settings/lockscreenshortcut/ExpandAppList;->t_appNo:I
    invoke-static {v5}, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->access$000(Lcom/android/settings/lockscreenshortcut/ExpandAppList;)I

    move-result v5

    add-int/lit8 v2, v5, 0x1

    .line 364
    :goto_2
    if-eqz p1, :cond_8

    if-ne p1, v2, :cond_c

    .line 365
    :cond_8
    if-nez p1, :cond_b

    .line 366
    invoke-virtual {v4, v8, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 367
    invoke-virtual {p2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 368
    .restart local v1       #appName:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList$AppListAdapter;->this$0:Lcom/android/settings/lockscreenshortcut/ExpandAppList;

    #getter for: Lcom/android/settings/lockscreenshortcut/ExpandAppList;->t_appNo:I
    invoke-static {v5}, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->access$000(Lcom/android/settings/lockscreenshortcut/ExpandAppList;)I

    move-result v5

    if-nez v5, :cond_a

    const v5, 0x7f0910cc

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 362
    .end local v1           #appName:Landroid/widget/TextView;
    :cond_9
    const/4 v2, 0x0

    goto :goto_2

    .line 369
    .restart local v1       #appName:Landroid/widget/TextView;
    :cond_a
    const v5, 0x7f0910cb

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 372
    .end local v1           #appName:Landroid/widget/TextView;
    :cond_b
    invoke-virtual {v4, v8, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 373
    invoke-virtual {p2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 374
    .restart local v1       #appName:Landroid/widget/TextView;
    const v5, 0x7f0910cc

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 379
    .end local v1           #appName:Landroid/widget/TextView;
    :cond_c
    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 380
    .restart local v1       #appName:Landroid/widget/TextView;
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 381
    .restart local v0       #appIcon:Landroid/widget/ImageView;
    invoke-virtual {p0, p1}, Lcom/android/settings/lockscreenshortcut/ExpandAppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList$AppListAdapter;->this$0:Lcom/android/settings/lockscreenshortcut/ExpandAppList;

    #getter for: Lcom/android/settings/lockscreenshortcut/ExpandAppList;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v6}, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->access$100(Lcom/android/settings/lockscreenshortcut/ExpandAppList;)Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_d

    .line 382
    invoke-virtual {p0, p1}, Lcom/android/settings/lockscreenshortcut/ExpandAppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v6, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList$AppListAdapter;->this$0:Lcom/android/settings/lockscreenshortcut/ExpandAppList;

    #getter for: Lcom/android/settings/lockscreenshortcut/ExpandAppList;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v6}, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->access$100(Lcom/android/settings/lockscreenshortcut/ExpandAppList;)Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/settings/lockscreenshortcut/ExpandAppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList$AppListAdapter;->this$0:Lcom/android/settings/lockscreenshortcut/ExpandAppList;

    #getter for: Lcom/android/settings/lockscreenshortcut/ExpandAppList;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v6}, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->access$100(Lcom/android/settings/lockscreenshortcut/ExpandAppList;)Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 384
    invoke-virtual {p0, p1}, Lcom/android/settings/lockscreenshortcut/ExpandAppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v6, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList$AppListAdapter;->this$0:Lcom/android/settings/lockscreenshortcut/ExpandAppList;

    #getter for: Lcom/android/settings/lockscreenshortcut/ExpandAppList;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v6}, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->access$100(Lcom/android/settings/lockscreenshortcut/ExpandAppList;)Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1
.end method

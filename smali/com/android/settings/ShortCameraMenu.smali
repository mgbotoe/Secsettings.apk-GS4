.class public Lcom/android/settings/ShortCameraMenu;
.super Landroid/app/Activity;
.source "ShortCameraMenu.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static mModeItem:[Ljava/lang/String;


# instance fields
.field private mBodyText:Landroid/widget/TextView;

.field private mImageView:Landroid/widget/ImageView;

.field private mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ShortCameraMenu;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/ShortCameraMenu;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method private updateState()V
    .locals 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/settings/ShortCameraMenu;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/settings/ShortCameraMenu;->mBodyText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/ShortCameraMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0911ea

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p0, Lcom/android/settings/ShortCameraMenu;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f0202b7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 114
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ShortCameraMenu;->mBodyText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/ShortCameraMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0911e9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v0, p0, Lcom/android/settings/ShortCameraMenu;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f0202b3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v2, 0x7f0400cc

    invoke-virtual {p0, v2}, Lcom/android/settings/ShortCameraMenu;->setContentView(I)V

    .line 51
    new-array v2, v8, [Ljava/lang/String;

    sput-object v2, Lcom/android/settings/ShortCameraMenu;->mModeItem:[Ljava/lang/String;

    .line 52
    sget-object v2, Lcom/android/settings/ShortCameraMenu;->mModeItem:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/ShortCameraMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0911e7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 53
    sget-object v2, Lcom/android/settings/ShortCameraMenu;->mModeItem:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/ShortCameraMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0911e8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 55
    const v2, 0x7f0b0148

    invoke-virtual {p0, v2}, Lcom/android/settings/ShortCameraMenu;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/settings/ShortCameraMenu;->mListView:Landroid/widget/ListView;

    .line 56
    iget-object v2, p0, Lcom/android/settings/ShortCameraMenu;->mListView:Landroid/widget/ListView;

    new-instance v3, Landroid/widget/ArrayAdapter;

    const v4, 0x7f0400e2

    sget-object v5, Lcom/android/settings/ShortCameraMenu;->mModeItem:[Ljava/lang/String;

    invoke-direct {v3, p0, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 57
    iget-object v2, p0, Lcom/android/settings/ShortCameraMenu;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 58
    iget-object v2, p0, Lcom/android/settings/ShortCameraMenu;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/settings/ShortCameraMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "kg_enable_camera_widget_type"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3, v7}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 59
    iget-object v2, p0, Lcom/android/settings/ShortCameraMenu;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 60
    iget-object v2, p0, Lcom/android/settings/ShortCameraMenu;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v8}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 62
    const v2, 0x7f0b0227

    invoke-virtual {p0, v2}, Lcom/android/settings/ShortCameraMenu;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/ShortCameraMenu;->mBodyText:Landroid/widget/TextView;

    .line 63
    const v2, 0x7f0b00bd

    invoke-virtual {p0, v2}, Lcom/android/settings/ShortCameraMenu;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/ShortCameraMenu;->mImageView:Landroid/widget/ImageView;

    .line 65
    const v2, 0x7f0b01c1

    invoke-virtual {p0, v2}, Lcom/android/settings/ShortCameraMenu;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 66
    .local v1, buttonOk:Landroid/widget/Button;
    new-instance v2, Lcom/android/settings/ShortCameraMenu$1;

    invoke-direct {v2, p0}, Lcom/android/settings/ShortCameraMenu$1;-><init>(Lcom/android/settings/ShortCameraMenu;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    const v2, 0x7f0b01c0

    invoke-virtual {p0, v2}, Lcom/android/settings/ShortCameraMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 73
    .local v0, buttonCancel:Landroid/widget/Button;
    new-instance v2, Lcom/android/settings/ShortCameraMenu$2;

    invoke-direct {v2, p0}, Lcom/android/settings/ShortCameraMenu$2;-><init>(Lcom/android/settings/ShortCameraMenu;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    invoke-static {p0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/android/settings/ShortCameraMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 129
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f120005

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 130
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 123
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 124
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 88
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    packed-switch p3, :pswitch_data_0

    .line 98
    :goto_0
    return-void

    .line 90
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/ShortCameraMenu;->mBodyText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/ShortCameraMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0911ea

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p0, Lcom/android/settings/ShortCameraMenu;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f0202b7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 94
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/ShortCameraMenu;->mBodyText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/ShortCameraMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0911e9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p0, Lcom/android/settings/ShortCameraMenu;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f0202b3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 118
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 135
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 144
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 137
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/ShortCameraMenu;->finish()V

    goto :goto_0

    .line 140
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/ShortCameraMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "kg_enable_camera_widget_type"

    iget-object v3, p0, Lcom/android/settings/ShortCameraMenu;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/ShortCameraMenu;->finish()V

    goto :goto_0

    .line 135
    :pswitch_data_0
    .packed-switch 0x7f0b05fa
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 101
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 102
    invoke-direct {p0}, Lcom/android/settings/ShortCameraMenu;->updateState()V

    .line 103
    return-void
.end method

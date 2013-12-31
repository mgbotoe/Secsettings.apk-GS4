.class public Lcom/android/settings/premiumwatch/WatchStyleSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WatchStyleSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static mStyleItem:[Ljava/lang/String;


# instance fields
.field private mImageView:Landroid/widget/ImageView;

.field private mListView:Landroid/widget/ListView;

.field mMenuApply:Landroid/view/MenuItem;

.field mMenuCancel:Landroid/view/MenuItem;

.field private mStyleState:I

.field resolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 101
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/premiumwatch/WatchStyleSettings;->setHasOptionsMenu(Z)V

    .line 102
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 103
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const-string v0, "WatchStyleSettings"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 108
    const/4 v0, 0x2

    const v1, 0x7f090173

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mMenuCancel:Landroid/view/MenuItem;

    .line 109
    iget-object v0, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 110
    iget-object v0, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 112
    const/4 v0, 0x3

    const v1, 0x7f090bca

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mMenuApply:Landroid/view/MenuItem;

    .line 113
    iget-object v0, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mMenuApply:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 114
    iget-object v0, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mMenuApply:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 116
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 117
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 61
    const v1, 0x7f0401a4

    invoke-virtual {p1, v1, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 62
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0b046c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mListView:Landroid/widget/ListView;

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/premiumwatch/WatchStyleSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->resolver:Landroid/content/ContentResolver;

    .line 65
    const v1, 0x7f0b00bd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mImageView:Landroid/widget/ImageView;

    .line 66
    iget-object v1, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->resolver:Landroid/content/ContentResolver;

    const-string v2, "premium_watch_style_option"

    invoke-static {v1, v2, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mStyleState:I

    .line 67
    iget v1, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mStyleState:I

    if-nez v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mImageView:Landroid/widget/ImageView;

    const v2, 0x7f02037a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 78
    :goto_0
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mStyleItem:[Ljava/lang/String;

    .line 79
    sget-object v1, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mStyleItem:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/premiumwatch/WatchStyleSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0915d5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 80
    sget-object v1, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mStyleItem:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/premiumwatch/WatchStyleSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0915d6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    .line 81
    sget-object v1, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mStyleItem:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/premiumwatch/WatchStyleSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0915d7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 82
    sget-object v1, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mStyleItem:[Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/android/settings/premiumwatch/WatchStyleSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0915d8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 83
    iget-object v1, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mListView:Landroid/widget/ListView;

    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/settings/premiumwatch/WatchStyleSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0401a5

    sget-object v5, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mStyleItem:[Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 84
    iget-object v1, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 88
    iget-object v1, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mListView:Landroid/widget/ListView;

    iget v2, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mStyleState:I

    invoke-virtual {v1, v2, v7}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 90
    iget-object v1, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 91
    return-object v0

    .line 69
    :cond_0
    iget v1, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mStyleState:I

    if-ne v1, v7, :cond_1

    .line 70
    iget-object v1, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mImageView:Landroid/widget/ImageView;

    const v2, 0x7f02037b

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 71
    :cond_1
    iget v1, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mStyleState:I

    if-ne v1, v4, :cond_2

    .line 72
    iget-object v1, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mImageView:Landroid/widget/ImageView;

    const v2, 0x7f02037c

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 74
    :cond_2
    iget-object v1, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mImageView:Landroid/widget/ImageView;

    const v2, 0x7f02037d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0
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
    .line 167
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    packed-switch p3, :pswitch_data_0

    .line 181
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mStyleState:I

    .line 185
    :goto_0
    const-string v0, "WatchStyleSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemClick selected style "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iput p3, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mStyleState:I

    .line 187
    return-void

    .line 169
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f02037a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 172
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f02037b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 175
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f02037c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 178
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f02037d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 142
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 161
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 144
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/premiumwatch/WatchStyleSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 147
    :pswitch_1
    const-string v0, "WatchStyleSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOptionsItemSelected, mStyleState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mStyleState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget v0, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mStyleState:I

    if-nez v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->resolver:Landroid/content/ContentResolver;

    const-string v1, "premium_watch_style_option"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 158
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/premiumwatch/WatchStyleSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 151
    :cond_1
    iget v0, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mStyleState:I

    if-ne v0, v3, :cond_2

    .line 152
    iget-object v0, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->resolver:Landroid/content/ContentResolver;

    const-string v1, "premium_watch_style_option"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 153
    :cond_2
    iget v0, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mStyleState:I

    if-ne v0, v4, :cond_3

    .line 154
    iget-object v0, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->resolver:Landroid/content/ContentResolver;

    const-string v1, "premium_watch_style_option"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 155
    :cond_3
    iget v0, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mStyleState:I

    if-ne v0, v5, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->resolver:Landroid/content/ContentResolver;

    const-string v1, "premium_watch_style_option"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 96
    const-string v0, "watch_style_value"

    iget v1, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mStyleState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 97
    return-void
.end method

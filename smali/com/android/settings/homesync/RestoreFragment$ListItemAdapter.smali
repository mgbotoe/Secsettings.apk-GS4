.class Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;
.super Landroid/widget/ArrayAdapter;
.source "RestoreFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homesync/RestoreFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/settings/homesync/RestoreFragment$ListItem;",
        ">;"
    }
.end annotation


# instance fields
.field private isSelected:J

.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/homesync/RestoreFragment$ListItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/homesync/RestoreFragment;

.field private tmpRadioBtn:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>(Lcom/android/settings/homesync/RestoreFragment;Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/homesync/RestoreFragment$ListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 265
    .local p4, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/homesync/RestoreFragment$ListItem;>;"
    iput-object p1, p0, Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;->this$0:Lcom/android/settings/homesync/RestoreFragment;

    .line 266
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 262
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;->isSelected:J

    .line 267
    iput-object p4, p0, Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;->items:Ljava/util/ArrayList;

    .line 268
    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 259
    iget-wide v0, p0, Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;->isSelected:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 259
    iput-wide p1, p0, Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;->isSelected:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;)Landroid/widget/RadioButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;->tmpRadioBtn:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;Landroid/widget/RadioButton;)Landroid/widget/RadioButton;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 259
    iput-object p1, p0, Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;->tmpRadioBtn:Landroid/widget/RadioButton;

    return-object p1
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 271
    move-object v4, p2

    .line 273
    .local v4, v:Landroid/view/View;
    if-nez v4, :cond_0

    .line 274
    iget-object v6, p0, Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;->this$0:Lcom/android/settings/homesync/RestoreFragment;

    invoke-virtual {v6}, Lcom/android/settings/homesync/RestoreFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 275
    .local v5, vi:Landroid/view/LayoutInflater;
    const v6, 0x7f040153

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 277
    .end local v5           #vi:Landroid/view/LayoutInflater;
    :cond_0
    iget-object v6, p0, Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/homesync/RestoreFragment$ListItem;

    .line 278
    .local v2, p:Lcom/android/settings/homesync/RestoreFragment$ListItem;
    if-eqz v2, :cond_3

    .line 279
    new-instance v1, Lcom/android/settings/homesync/RestoreFragment$ViewHolder;

    invoke-direct {v1}, Lcom/android/settings/homesync/RestoreFragment$ViewHolder;-><init>()V

    .line 281
    .local v1, holder:Lcom/android/settings/homesync/RestoreFragment$ViewHolder;
    const v6, 0x7f0b00eb

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 282
    .local v0, dt:Landroid/widget/TextView;
    const v6, 0x7f0b01d2

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 283
    .local v3, st:Landroid/widget/TextView;
    const v6, 0x7f0b0069

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    iput-object v6, v1, Lcom/android/settings/homesync/RestoreFragment$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    .line 285
    if-eqz v0, :cond_1

    .line 286
    invoke-virtual {v2}, Lcom/android/settings/homesync/RestoreFragment$ListItem;->getDate()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    :cond_1
    if-eqz v3, :cond_2

    .line 289
    invoke-virtual {v2}, Lcom/android/settings/homesync/RestoreFragment$ListItem;->getSize()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    :cond_2
    invoke-virtual {v2}, Lcom/android/settings/homesync/RestoreFragment$ListItem;->getDate()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/homesync/RestoreFragment$ViewHolder;->folderName:Ljava/lang/String;

    .line 294
    invoke-virtual {v4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 295
    iget-object v6, v1, Lcom/android/settings/homesync/RestoreFragment$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    invoke-virtual {v6, v2}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 296
    iget-object v6, v1, Lcom/android/settings/homesync/RestoreFragment$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    new-instance v7, Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter$1;

    invoke-direct {v7, p0, p1}, Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter$1;-><init>(Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;I)V

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    iget-wide v6, p0, Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;->isSelected:J

    int-to-long v8, p1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_4

    .line 326
    iget-object v6, v1, Lcom/android/settings/homesync/RestoreFragment$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 334
    .end local v0           #dt:Landroid/widget/TextView;
    .end local v1           #holder:Lcom/android/settings/homesync/RestoreFragment$ViewHolder;
    .end local v3           #st:Landroid/widget/TextView;
    :cond_3
    :goto_0
    return-object v4

    .line 329
    .restart local v0       #dt:Landroid/widget/TextView;
    .restart local v1       #holder:Lcom/android/settings/homesync/RestoreFragment$ViewHolder;
    .restart local v3       #st:Landroid/widget/TextView;
    :cond_4
    iget-object v6, v1, Lcom/android/settings/homesync/RestoreFragment$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 330
    iget-object v6, p0, Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;->tmpRadioBtn:Landroid/widget/RadioButton;

    if-eqz v6, :cond_3

    iget-object v6, v1, Lcom/android/settings/homesync/RestoreFragment$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    iget-object v7, p0, Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;->tmpRadioBtn:Landroid/widget/RadioButton;

    if-eq v6, v7, :cond_3

    .line 331
    iget-object v6, v1, Lcom/android/settings/homesync/RestoreFragment$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    iput-object v6, p0, Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;->tmpRadioBtn:Landroid/widget/RadioButton;

    goto :goto_0
.end method

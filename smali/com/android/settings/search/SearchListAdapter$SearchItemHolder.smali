.class Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;
.super Ljava/lang/Object;
.source "SearchListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/search/SearchListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SearchItemHolder"
.end annotation


# instance fields
.field checkboxMenuType:Landroid/widget/CheckBox;

.field ivMenuIcon:Landroid/widget/ImageView;

.field switchMenuType:Landroid/widget/Switch;

.field final synthetic this$0:Lcom/android/settings/search/SearchListAdapter;

.field tvMenuSummary:Landroid/widget/TextView;

.field tvMenuTitlte:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/android/settings/search/SearchListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 296
    iput-object p1, p0, Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;->this$0:Lcom/android/settings/search/SearchListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

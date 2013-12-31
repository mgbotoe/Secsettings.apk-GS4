.class Lcom/android/settings/myplace/MyPlaceProfileSettings$10;
.super Ljava/lang/Object;
.source "MyPlaceProfileSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/myplace/MyPlaceProfileSettings;->showHelpStep3Dialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1201
    iput-object p1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$10;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    const/4 v1, 0x1

    .line 1206
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$10;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    iget-object v0, v0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->alert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1207
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$10;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    #calls: Lcom/android/settings/myplace/MyPlaceProfileSettings;->showHelpStep4Dialog()V
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$2200(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V

    .line 1208
    return-void
.end method

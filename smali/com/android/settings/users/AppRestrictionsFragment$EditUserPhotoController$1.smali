.class Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController$1;
.super Ljava/lang/Object;
.source "AppRestrictionsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;-><init>(Landroid/app/Fragment;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;


# direct methods
.method constructor <init>(Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;)V
    .locals 0
    .parameter

    .prologue
    .line 1254
    iput-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController$1;->this$0:Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1257
    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController$1;->this$0:Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;

    #calls: Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;->showUpdatePhotoPopup()V
    invoke-static {v0}, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;->access$2200(Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;)V

    .line 1258
    return-void
.end method

.class Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay$MapGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SelectMapActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MapGestureListener"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;


# direct methods
.method constructor <init>(Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;)V
    .locals 0
    .parameter

    .prologue
    .line 708
    iput-object p1, p0, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay$MapGestureListener;->this$1:Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "ev"

    .prologue
    .line 711
    iget-object v1, p0, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay$MapGestureListener;->this$1:Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;

    iget-object v1, v1, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    #getter for: Lcom/android/settings/myplace/SelectMapActivity;->mMapMode:I
    invoke-static {v1}, Lcom/android/settings/myplace/SelectMapActivity;->access$1700(Lcom/android/settings/myplace/SelectMapActivity;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 712
    iget-object v1, p0, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay$MapGestureListener;->this$1:Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;

    iget-object v1, v1, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    #getter for: Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;
    invoke-static {v1}, Lcom/android/settings/myplace/SelectMapActivity;->access$100(Lcom/android/settings/myplace/SelectMapActivity;)Lcom/google/android/maps/MyLocationOverlay;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 713
    iget-object v1, p0, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay$MapGestureListener;->this$1:Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;

    iget-object v1, v1, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    #getter for: Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;
    invoke-static {v1}, Lcom/android/settings/myplace/SelectMapActivity;->access$100(Lcom/android/settings/myplace/SelectMapActivity;)Lcom/google/android/maps/MyLocationOverlay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/MyLocationOverlay;->disableMyLocation()V

    .line 716
    :cond_0
    iget-object v1, p0, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay$MapGestureListener;->this$1:Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;

    iget-object v1, v1, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    iget-object v1, v1, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v1}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-interface {v1, v2, v3}, Lcom/google/android/maps/Projection;->fromPixels(II)Lcom/google/android/maps/GeoPoint;

    move-result-object v0

    .line 717
    .local v0, point:Lcom/google/android/maps/GeoPoint;
    iget-object v1, p0, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay$MapGestureListener;->this$1:Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;

    #getter for: Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;->mOverlays:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;->access$1800(Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 718
    iget-object v1, p0, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay$MapGestureListener;->this$1:Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;

    iget-object v1, v1, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v3

    const-string v4, "here"

    #calls: Lcom/android/settings/myplace/SelectMapActivity;->addMarker(IILjava/lang/String;)Z
    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/myplace/SelectMapActivity;->access$1100(Lcom/android/settings/myplace/SelectMapActivity;IILjava/lang/String;)Z

    .line 719
    iget-object v1, p0, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay$MapGestureListener;->this$1:Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;

    iget-object v1, v1, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    #calls: Lcom/android/settings/myplace/SelectMapActivity;->moveToMarker(Lcom/google/android/maps/GeoPoint;)Z
    invoke-static {v1, v0}, Lcom/android/settings/myplace/SelectMapActivity;->access$1600(Lcom/android/settings/myplace/SelectMapActivity;Lcom/google/android/maps/GeoPoint;)Z

    .line 720
    iget-object v1, p0, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay$MapGestureListener;->this$1:Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;

    iget-object v1, v1, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    const/4 v2, 0x1

    #setter for: Lcom/android/settings/myplace/SelectMapActivity;->mResearch:Z
    invoke-static {v1, v2}, Lcom/android/settings/myplace/SelectMapActivity;->access$602(Lcom/android/settings/myplace/SelectMapActivity;Z)Z

    .line 722
    .end local v0           #point:Lcom/google/android/maps/GeoPoint;
    :cond_1
    return-void
.end method

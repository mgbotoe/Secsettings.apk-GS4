.class Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;
.super Lcom/google/android/maps/ItemizedOverlay;
.source "SelectMapActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/myplace/SelectMapActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectMapOverlay"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay$MapGestureListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/maps/ItemizedOverlay",
        "<",
        "Lcom/google/android/maps/OverlayItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mOverlays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/maps/OverlayItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/myplace/SelectMapActivity;


# direct methods
.method public constructor <init>(Lcom/android/settings/myplace/SelectMapActivity;Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "defaultMarker"

    .prologue
    .line 593
    iput-object p1, p0, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    .line 594
    invoke-static {p3}, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;->boundCenterBottom(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/ItemizedOverlay;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 590
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;->mOverlays:Ljava/util/ArrayList;

    .line 595
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay$MapGestureListener;

    invoke-direct {v1, p0}, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay$MapGestureListener;-><init>(Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;)V

    invoke-direct {v0, p2, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;->mGestureDetector:Landroid/view/GestureDetector;

    .line 603
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;->setLastFocusedIndex(I)V

    .line 604
    invoke-virtual {p0}, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;->populate()V

    .line 605
    return-void
.end method

.method static synthetic access$1800(Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 588
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;->mOverlays:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public addOverlay(Lcom/google/android/maps/OverlayItem;)V
    .locals 1
    .parameter "overlay"

    .prologue
    .line 608
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 609
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;->setLastFocusedIndex(I)V

    .line 610
    invoke-virtual {p0}, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;->populate()V

    .line 611
    return-void
.end method

.method public clearOverlay()V
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 615
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;->setLastFocusedIndex(I)V

    .line 616
    invoke-virtual {p0}, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;->populate()V

    .line 617
    return-void
.end method

.method protected createItem(I)Lcom/google/android/maps/OverlayItem;
    .locals 1
    .parameter "i"

    .prologue
    .line 649
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/OverlayItem;

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;Z)V
    .locals 4
    .parameter "c"
    .parameter "v"
    .parameter "b"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 630
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    #getter for: Lcom/android/settings/myplace/SelectMapActivity;->mIsTabletConfig:Z
    invoke-static {v0}, Lcom/android/settings/myplace/SelectMapActivity;->access$1500(Lcom/android/settings/myplace/SelectMapActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 631
    invoke-virtual {p2}, Lcom/google/android/maps/MapView;->getZoomLevel()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/android/maps/MapView;->getMaxZoomLevel()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 632
    invoke-virtual {p2}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/maps/MapView;->getMaxZoomLevel()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/MapController;->setZoom(I)I

    .line 634
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/maps/MapView;->getZoomLevel()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    .line 635
    invoke-virtual {p2}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/maps/MapController;->setZoom(I)I

    .line 639
    :cond_1
    invoke-virtual {p2}, Lcom/google/android/maps/MapView;->getZoomLevel()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/android/maps/MapView;->getMaxZoomLevel()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_2

    .line 640
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    iget-object v0, v0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getZoomButtonsController()Landroid/widget/ZoomButtonsController;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ZoomButtonsController;->setZoomInEnabled(Z)V

    .line 641
    :cond_2
    invoke-virtual {p2}, Lcom/google/android/maps/MapView;->getZoomLevel()I

    move-result v0

    if-gt v0, v3, :cond_3

    .line 642
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    iget-object v0, v0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getZoomButtonsController()Landroid/widget/ZoomButtonsController;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ZoomButtonsController;->setZoomOutEnabled(Z)V

    .line 644
    :cond_3
    invoke-super {p0, p1, p2, v2}, Lcom/google/android/maps/ItemizedOverlay;->draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;Z)V

    .line 645
    return-void
.end method

.method protected getIndexToDraw(I)I
    .locals 1
    .parameter "drawingOrder"

    .prologue
    .line 621
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    .line 622
    invoke-super {p0, p1}, Lcom/google/android/maps/ItemizedOverlay;->getIndexToDraw(I)I

    move-result v0

    .line 624
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onTap(I)Z
    .locals 4
    .parameter "index"

    .prologue
    .line 659
    invoke-super {p0, p1}, Lcom/google/android/maps/ItemizedOverlay;->onTap(I)Z

    .line 660
    iget-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/maps/OverlayItem;

    invoke-virtual {v2}, Lcom/google/android/maps/OverlayItem;->getPoint()Lcom/google/android/maps/GeoPoint;

    move-result-object v1

    .line 661
    .local v1, point:Lcom/google/android/maps/GeoPoint;
    iget-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    iget-object v2, v2, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v2}, Lcom/google/android/maps/MapView;->getMapCenter()Lcom/google/android/maps/GeoPoint;

    move-result-object v0

    .line 662
    .local v0, center:Lcom/google/android/maps/GeoPoint;
    invoke-virtual {v1}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 664
    iget-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    invoke-virtual {v2}, Lcom/android/settings/myplace/SelectMapActivity;->doFinish()V

    .line 669
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 667
    :cond_0
    iget-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    #calls: Lcom/android/settings/myplace/SelectMapActivity;->moveToMarker(Lcom/google/android/maps/GeoPoint;)Z
    invoke-static {v2, v1}, Lcom/android/settings/myplace/SelectMapActivity;->access$1600(Lcom/android/settings/myplace/SelectMapActivity;Lcom/google/android/maps/GeoPoint;)Z

    goto :goto_0
.end method

.method public onTap(Lcom/google/android/maps/GeoPoint;Lcom/google/android/maps/MapView;)Z
    .locals 4
    .parameter "p"
    .parameter "mapView"

    .prologue
    .line 675
    const/4 v1, 0x0

    .line 676
    .local v1, ret:Z
    iget-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    #getter for: Lcom/android/settings/myplace/SelectMapActivity;->mIsTabletConfig:Z
    invoke-static {v2}, Lcom/android/settings/myplace/SelectMapActivity;->access$1500(Lcom/android/settings/myplace/SelectMapActivity;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 677
    invoke-virtual {p2}, Lcom/google/android/maps/MapView;->getZoomLevel()I

    move-result v2

    invoke-virtual {p2}, Lcom/google/android/maps/MapView;->getMaxZoomLevel()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 678
    invoke-virtual {p2}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/maps/MapView;->getMaxZoomLevel()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/google/android/maps/MapController;->setZoom(I)I

    .line 680
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/maps/MapView;->getZoomLevel()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_1

    .line 681
    invoke-virtual {p2}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/google/android/maps/MapController;->setZoom(I)I

    .line 684
    :cond_1
    iget-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 686
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/google/android/maps/ItemizedOverlay;->onTap(Lcom/google/android/maps/GeoPoint;Lcom/google/android/maps/MapView;)Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 691
    :cond_2
    :goto_0
    return v1

    .line 687
    :catch_0
    move-exception v0

    .line 688
    .local v0, oobe:Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Lcom/google/android/maps/MapView;)Z
    .locals 2
    .parameter "ev"
    .parameter "mapView"

    .prologue
    .line 696
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    #getter for: Lcom/android/settings/myplace/SelectMapActivity;->mIsTabletConfig:Z
    invoke-static {v0}, Lcom/android/settings/myplace/SelectMapActivity;->access$1500(Lcom/android/settings/myplace/SelectMapActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 697
    invoke-virtual {p2}, Lcom/google/android/maps/MapView;->getZoomLevel()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/android/maps/MapView;->getMaxZoomLevel()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 698
    invoke-virtual {p2}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/maps/MapView;->getMaxZoomLevel()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/MapController;->setZoom(I)I

    .line 701
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/maps/MapView;->getZoomLevel()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    .line 702
    invoke-virtual {p2}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/maps/MapController;->setZoom(I)I

    .line 704
    :cond_1
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 705
    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

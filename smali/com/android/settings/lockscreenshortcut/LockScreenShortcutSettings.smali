.class public Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;
.super Landroid/app/Activity;
.source "LockScreenShortcutSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field static DEFAULT_CURSOR_WIDTH:I

.field static ICON_5_CURSOR_WIDTH:I

.field static MAX_SHORTCUT_ICON:I


# instance fields
.field private Activityresult:Z

.field private Addition_Icon:Landroid/widget/ImageView;

.field private Addition_IconBar:Landroid/widget/ImageView;

.field private appList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mAddButton:Landroid/widget/ImageView;

.field private mAddButtonPositionBar:Landroid/widget/ImageView;

.field private mAdditionImage:Z

.field mClickListener:Landroid/view/View$OnClickListener;

.field private mDeleteArea:Lcom/android/settings/lockscreenshortcut/DeleteView;

.field mDeleteAreaDragListner:Landroid/view/View$OnDragListener;

.field private mDragShadowBuilder:Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mIconCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mIconChangeAnimator:Landroid/animation/Animator;

.field mIconDragListner:Landroid/view/View$OnDragListener;

.field private mIconResizer:Lcom/android/settings/lockscreenshortcut/IconResizer;

.field private mIconSize:I

.field private mIsOnDragging:Z

.field private mIsOnSelecting:Z

.field mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mMainLayout:Landroid/widget/LinearLayout;

.field private mNumOfSavedShortcut:I

.field private mOnDragItem:I

.field private mPm:Landroid/content/pm/PackageManager;

.field private mPositionBar:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field mPositionBarDragListner:Landroid/view/View$OnDragListener;

.field private mSecretModeReceiver:Landroid/content/BroadcastReceiver;

.field private mShortCutButton:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mShortCutList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mShortcutAddListener:Landroid/view/View$OnClickListener;

.field private pcheck:I

.field private setcheck:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 93
    const/4 v0, 0x3

    sput v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->MAX_SHORTCUT_ICON:I

    .line 94
    sput v1, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->DEFAULT_CURSOR_WIDTH:I

    .line 95
    sput v1, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->ICON_5_CURSOR_WIDTH:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 103
    iput-object v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButton:Landroid/widget/ImageView;

    .line 104
    iput-object v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButtonPositionBar:Landroid/widget/ImageView;

    .line 105
    iput-object v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->Addition_Icon:Landroid/widget/ImageView;

    .line 106
    iput-object v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->Addition_IconBar:Landroid/widget/ImageView;

    .line 112
    iput v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mNumOfSavedShortcut:I

    .line 113
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mOnDragItem:I

    .line 114
    iput-object v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 115
    iput-object v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIconCache:Ljava/util/HashMap;

    .line 116
    iput v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIconSize:I

    .line 117
    iput-boolean v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIsOnDragging:Z

    .line 118
    iput-boolean v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIsOnSelecting:Z

    .line 119
    iput-boolean v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAdditionImage:Z

    .line 121
    iput-boolean v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->Activityresult:Z

    .line 122
    iput-boolean v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->setcheck:Z

    .line 123
    iput v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->pcheck:I

    .line 198
    new-instance v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$1;-><init>(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)V

    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mSecretModeReceiver:Landroid/content/BroadcastReceiver;

    .line 569
    new-instance v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$2;-><init>(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)V

    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortcutAddListener:Landroid/view/View$OnClickListener;

    .line 993
    new-instance v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$3;-><init>(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)V

    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mClickListener:Landroid/view/View$OnClickListener;

    .line 1022
    new-instance v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$4;-><init>(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)V

    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 1045
    new-instance v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$5;-><init>(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)V

    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIconDragListner:Landroid/view/View$OnDragListener;

    .line 1062
    new-instance v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$6;

    invoke-direct {v0, p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$6;-><init>(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)V

    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPositionBarDragListner:Landroid/view/View$OnDragListener;

    .line 1090
    new-instance v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$7;

    invoke-direct {v0, p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$7;-><init>(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)V

    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mDeleteAreaDragListner:Landroid/view/View$OnDragListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->Activityresult:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->Activityresult:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutButton:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIsOnSelecting:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIsOnSelecting:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput p1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->pcheck:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIsOnDragging:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIsOnDragging:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)Lcom/android/settings/lockscreenshortcut/DeleteView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mDeleteArea:Lcom/android/settings/lockscreenshortcut/DeleteView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mOnDragItem:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput p1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mOnDragItem:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mDragShadowBuilder:Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;)Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mDragShadowBuilder:Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;Landroid/view/View;Landroid/content/ClipData;Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;Ljava/lang/Object;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 88
    invoke-direct/range {p0 .. p5}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->startDrag(Landroid/view/View;Landroid/content/ClipData;Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;Landroid/widget/ImageView;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->changeShortCut(Landroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->removeShortcut(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->adjustCursorWidth()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPositionBar:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->saveShortcutList()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAdditionImage:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAdditionImage:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mMainLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButton:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButtonPositionBar:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButtonPositionBar:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->appList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mNumOfSavedShortcut:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->showAddButton(Z)V

    return-void
.end method

.method private addShortcut(ILandroid/content/pm/ResolveInfo;)V
    .locals 9
    .parameter "droped_position"
    .parameter "new_shortcut"

    .prologue
    const/4 v8, 0x0

    const v7, 0x7f0b0229

    .line 717
    iget v5, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mNumOfSavedShortcut:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mNumOfSavedShortcut:I

    .line 719
    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 721
    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 722
    .local v2, inflater:Landroid/view/LayoutInflater;
    mul-int/lit8 v0, p1, 0x2

    .line 724
    .local v0, add_position:I
    const v5, 0x7f0400cb

    invoke-virtual {v2, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 726
    .local v4, shorcutIcon:Landroid/view/View;
    iget-object v6, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutButton:Ljava/util/ArrayList;

    const v5, 0x7f0b0226

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v6, p1, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 727
    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 734
    const v5, 0x7f0400ce

    invoke-virtual {v2, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 736
    .local v3, positionBar:Landroid/view/View;
    iget-object v6, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPositionBar:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v6, p1, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 737
    sget v5, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->MAX_SHORTCUT_ICON:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    .line 738
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const/16 v6, 0x1e

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 740
    :cond_0
    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 742
    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v5}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v5

    invoke-direct {p0, v6, v5}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->loadAppIcon(Landroid/content/pm/ActivityInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 743
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_1

    .line 744
    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v6}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 746
    :cond_1
    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutButton:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 756
    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutButton:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutList:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v7}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 757
    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPositionBar:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPositionBarDragListner:Landroid/view/View$OnDragListener;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 758
    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutButton:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 759
    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutButton:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 760
    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutButton:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIconDragListner:Landroid/view/View$OnDragListener;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 761
    return-void
.end method

.method private adjustCursorWidth()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 910
    sget v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->DEFAULT_CURSOR_WIDTH:I

    .line 911
    .local v0, cursor_width:I
    sget v2, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->MAX_SHORTCUT_ICON:I

    if-le v2, v3, :cond_3

    .line 912
    iget v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mNumOfSavedShortcut:I

    if-lt v2, v3, :cond_0

    .line 913
    sget v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->ICON_5_CURSOR_WIDTH:I

    .line 916
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mNumOfSavedShortcut:I

    if-gt v1, v2, :cond_1

    .line 917
    iget-object v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPositionBar:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 918
    iget-object v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPositionBar:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->requestLayout()V

    .line 916
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 921
    :cond_1
    iget-object v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButtonPositionBar:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    .line 922
    iget-object v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButtonPositionBar:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 923
    iget-object v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButtonPositionBar:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->requestLayout()V

    .line 926
    :cond_2
    iget-object v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 929
    .end local v1           #i:I
    :cond_3
    return-void
.end method

.method private changeShortCut(Landroid/widget/ImageView;)V
    .locals 4
    .parameter

    .prologue
    .line 661
    const-string v0, "LockScreenShortcutSettings"

    const-string v1, "changeShortCut"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPositionBar:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 664
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 665
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPositionBar:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 667
    :cond_0
    if-lt v1, v2, :cond_2

    .line 668
    const-string v0, "LockScreenShortcutSettings"

    const-string v1, "Cannot find dropped position"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    :goto_1
    return-void

    .line 664
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 673
    :cond_2
    const-string v0, "LockScreenShortcutSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mOnDragItem : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mOnDragItem:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , dropItemPosition : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    iget v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mOnDragItem:I

    if-ne v1, v0, :cond_3

    .line 675
    const-string v0, "LockScreenShortcutSettings"

    const-string v1, "dropItemPosition == mOnDragItem / Nothing to change position because dropped position is nearby DragItem"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 677
    :cond_3
    iget v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mOnDragItem:I

    if-le v1, v0, :cond_5

    .line 678
    iget v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mOnDragItem:I

    sub-int v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_4

    .line 679
    const-string v0, "LockScreenShortcutSettings"

    const-string v1, "dropItemPosition > mOnDragItem / Nothing to change position because dropped position is nearby DragItem"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 682
    :cond_4
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mOnDragItem:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 683
    iget v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mOnDragItem:I

    invoke-direct {p0, v2}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->removeShortcut(I)V

    .line 684
    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1, v0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->addShortcut(ILandroid/content/pm/ResolveInfo;)V

    .line 690
    :goto_2
    invoke-direct {p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->adjustCursorWidth()V

    .line 691
    invoke-direct {p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->saveShortcutList()V

    goto :goto_1

    .line 686
    :cond_5
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mOnDragItem:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 687
    iget v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mOnDragItem:I

    invoke-direct {p0, v2}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->removeShortcut(I)V

    .line 688
    invoke-direct {p0, v1, v0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->addShortcut(ILandroid/content/pm/ResolveInfo;)V

    goto :goto_2
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 263
    const-string v0, "enterprise_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private loadAppIcon(ILandroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 632
    const-string v1, "LockScreenShortcutSettings"

    const-string v2, "loadAppIcon (2)"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    iget-object v2, p2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 635
    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 637
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPm:Landroid/content/pm/PackageManager;

    iget v4, p2, Landroid/content/pm/ActivityInfo;->icon:I

    if-eqz v4, :cond_1

    :goto_0
    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManager;->getCSCPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 638
    if-eqz v1, :cond_2

    .line 639
    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIconResizer:Lcom/android/settings/lockscreenshortcut/IconResizer;

    invoke-virtual {v3, v1}, Lcom/android/settings/lockscreenshortcut/IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 656
    :cond_0
    :goto_1
    return-object v0

    :cond_1
    move-object v1, v2

    .line 637
    goto :goto_0

    .line 641
    :cond_2
    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 642
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 643
    if-eqz v1, :cond_0

    .line 644
    iget-object v4, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIconResizer:Lcom/android/settings/lockscreenshortcut/IconResizer;

    invoke-virtual {v4, v3}, Lcom/android/settings/lockscreenshortcut/IconResizer;->getDpi(I)I

    move-result v3

    invoke-virtual {v1, p1, v3}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 645
    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIconResizer:Lcom/android/settings/lockscreenshortcut/IconResizer;

    invoke-virtual {v3, v1}, Lcom/android/settings/lockscreenshortcut/IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_1

    .line 648
    :catch_0
    move-exception v1

    .line 649
    const-string v2, "LockScreenShortcutSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadAppIcon : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 650
    :catch_1
    move-exception v1

    .line 651
    const-string v3, "LockScreenShortcutSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "packageName : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    const-string v2, "LockScreenShortcutSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadAppIcon : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private loadAppIcon(Landroid/content/pm/ActivityInfo;I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "activityInfo"
    .parameter "iconResId"

    .prologue
    .line 612
    const-string v1, "LockScreenShortcutSettings"

    const-string v2, "loadAppIcon (1)"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIconCache:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 614
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 615
    if-gtz p2, :cond_2

    .line 616
    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v1}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 621
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIconSize:I

    if-ge v1, v2, :cond_1

    .line 622
    if-gtz p2, :cond_3

    .line 623
    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v1}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    move-object v1, v0

    .line 628
    :goto_0
    return-object v1

    .line 618
    :cond_2
    invoke-direct {p0, p2, p1}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->loadAppIcon(ILandroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 625
    :cond_3
    invoke-direct {p0, p2, p1}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->loadAppIcon(ILandroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method private registerSecretModeReceiver()V
    .locals 2

    .prologue
    .line 187
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 188
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.samsung.android.intent.action.SECRET_MODE_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 189
    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mSecretModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 190
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #filter:Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 191
    .restart local v0       #filter:Landroid/content/IntentFilter;
    const-string v1, "com.samsung.android.intent.action.SECRET_MODE_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 192
    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mSecretModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 193
    return-void
.end method

.method private removeShortcut(I)V
    .locals 2
    .parameter "item_position"

    .prologue
    .line 708
    iget v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mNumOfSavedShortcut:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mNumOfSavedShortcut:I

    .line 709
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 710
    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mMainLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutButton:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 711
    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mMainLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPositionBar:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 712
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutButton:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 713
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPositionBar:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 714
    return-void
.end method

.method private saveShortcutList()V
    .locals 4

    .prologue
    .line 697
    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_shortcut_number_of_apps"

    iget v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mNumOfSavedShortcut:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 698
    const-string v1, ""

    .line 699
    const/4 v0, 0x0

    move-object v2, v1

    move v1, v0

    :goto_0
    iget v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mNumOfSavedShortcut:I

    if-ge v1, v0, :cond_0

    .line 700
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 701
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 699
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 703
    :cond_0
    const-string v0, "LockScreenShortcutSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shortcut_app_list : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_shortcut_app_list"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 705
    return-void
.end method

.method private setEnable(Z)V
    .locals 5
    .parameter "desiredState"

    .prologue
    const/4 v4, 0x0

    .line 576
    if-eqz p1, :cond_3

    .line 577
    iget-object v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mMainLayout:Landroid/widget/LinearLayout;

    const/high16 v3, 0x3f80

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 578
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mNumOfSavedShortcut:I

    if-ge v0, v2, :cond_1

    .line 579
    iget-object v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutButton:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 580
    .local v1, shortcutIcon:Landroid/widget/ImageView;
    if-eqz v1, :cond_0

    .line 581
    iget-object v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 582
    iget-object v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 578
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 588
    .end local v1           #shortcutIcon:Landroid/widget/ImageView;
    :cond_1
    iget-object v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    .line 589
    iget-object v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButton:Landroid/widget/ImageView;

    const v3, 0x7f0202b6

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 590
    iget-object v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButton:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 609
    :cond_2
    :goto_1
    return-void

    .line 593
    .end local v0           #i:I
    :cond_3
    iget-object v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mMainLayout:Landroid/widget/LinearLayout;

    const/high16 v3, 0x3f00

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 594
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    iget v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mNumOfSavedShortcut:I

    if-ge v0, v2, :cond_5

    .line 595
    iget-object v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutButton:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 596
    .restart local v1       #shortcutIcon:Landroid/widget/ImageView;
    if-eqz v1, :cond_4

    .line 597
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 598
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 594
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 604
    .end local v1           #shortcutIcon:Landroid/widget/ImageView;
    :cond_5
    iget-object v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    .line 605
    iget-object v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButton:Landroid/widget/ImageView;

    const v3, 0x7f0203fd

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 606
    iget-object v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method private showAddButton(Z)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 875
    iget v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mNumOfSavedShortcut:I

    sget v1, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->MAX_SHORTCUT_ICON:I

    if-ge v0, v1, :cond_4

    .line 877
    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_shortcut"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 879
    :cond_0
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 880
    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButton:Landroid/widget/ImageView;

    if-nez v1, :cond_1

    .line 881
    const v1, 0x7f0400cb

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 882
    const v1, 0x7f0b0226

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButton:Landroid/widget/ImageView;

    .line 883
    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButton:Landroid/widget/ImageView;

    const v3, 0x7f0202b6

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 884
    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButton:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 885
    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButton:Landroid/widget/ImageView;

    const v3, 0x7f091312

    invoke-virtual {p0, v3}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 886
    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 888
    :cond_1
    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButtonPositionBar:Landroid/widget/ImageView;

    if-nez v1, :cond_3

    .line 889
    const v1, 0x7f0400ce

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 890
    const v0, 0x7f0b0229

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButtonPositionBar:Landroid/widget/ImageView;

    .line 891
    sget v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->MAX_SHORTCUT_ICON:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    .line 892
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButtonPositionBar:Landroid/widget/ImageView;

    const/16 v2, 0x1e

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 894
    :cond_2
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 907
    :cond_3
    :goto_0
    return-void

    .line 897
    :cond_4
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 898
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mMainLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 899
    iput-object v4, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButton:Landroid/widget/ImageView;

    .line 901
    :cond_5
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButtonPositionBar:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 902
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mMainLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButtonPositionBar:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 903
    iput-object v4, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButtonPositionBar:Landroid/widget/ImageView;

    goto :goto_0
.end method

.method private startDrag(Landroid/view/View;Landroid/content/ClipData;Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;Ljava/lang/Object;I)Z
    .locals 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 931
    const-string v1, "LockScreenShortcutSettings"

    const-string v2, "Drag started"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    const/4 v15, 0x0

    .line 934
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    .line 935
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    .line 936
    move-object/from16 v0, p3

    invoke-virtual {v0, v7, v8}, Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;->onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 939
    iget v1, v8, Landroid/graphics/Point;->x:I

    iget v2, v7, Landroid/graphics/Point;->y:I

    div-int/lit8 v2, v2, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0043

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 942
    iget v1, v7, Landroid/graphics/Point;->x:I

    if-ltz v1, :cond_0

    iget v1, v7, Landroid/graphics/Point;->y:I

    if-ltz v1, :cond_0

    iget v1, v8, Landroid/graphics/Point;->x:I

    if-ltz v1, :cond_0

    iget v1, v8, Landroid/graphics/Point;->y:I

    if-gez v1, :cond_1

    .line 943
    :cond_0
    const-string v1, "LockScreenShortcutSettings"

    const-string v2, "Drag shadow dimensions must not be negative"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    const/4 v1, 0x0

    .line 990
    :goto_0
    return v1

    .line 948
    :cond_1
    new-instance v6, Landroid/view/Surface;

    invoke-direct {v6}, Landroid/view/Surface;-><init>()V

    .line 950
    :try_start_0
    const-class v1, Landroid/view/View;

    const-string v2, "mAttachInfo"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 951
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 952
    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 954
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mWindow"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 955
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 956
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/IWindow;

    .line 958
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "mSession"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 959
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 960
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/IWindowSession;

    .line 963
    iget v4, v7, Landroid/graphics/Point;->x:I

    iget v5, v7, Landroid/graphics/Point;->y:I

    move/from16 v3, p5

    invoke-interface/range {v1 .. v6}, Landroid/view/IWindowSession;->prepareDrag(Landroid/view/IWindow;IIILandroid/view/Surface;)Landroid/os/IBinder;

    move-result-object v9

    .line 965
    if-eqz v9, :cond_2

    .line 966
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;->setSurface(Landroid/view/Surface;)V

    .line 967
    invoke-virtual/range {p3 .. p3}, Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;->draw()V

    .line 969
    const-class v3, Landroid/view/View;

    const-string v4, "getViewRootImpl"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 970
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 971
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewRootImpl;

    .line 974
    const-class v4, Landroid/view/ViewRootImpl;

    const-string v5, "setLocalDragState"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/Object;

    aput-object v12, v10, v11

    invoke-virtual {v4, v5, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 975
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 976
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p4, v5, v10

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    invoke-virtual {v3, v7}, Landroid/view/ViewRootImpl;->getLastTouchPoint(Landroid/graphics/Point;)V

    .line 981
    iget v3, v7, Landroid/graphics/Point;->x:I

    int-to-float v10, v3

    iget v3, v7, Landroid/graphics/Point;->y:I

    int-to-float v11, v3

    iget v3, v8, Landroid/graphics/Point;->x:I

    int-to-float v12, v3

    iget v3, v8, Landroid/graphics/Point;->y:I

    int-to-float v13, v3

    move-object v7, v1

    move-object v8, v2

    move-object/from16 v14, p2

    invoke-interface/range {v7 .. v14}, Landroid/view/IWindowSession;->performDrag(Landroid/view/IWindow;Landroid/os/IBinder;FFFFLandroid/content/ClipData;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto/16 :goto_0

    .line 985
    :catch_0
    move-exception v1

    .line 986
    const-string v2, "LockScreenShortcutSettings"

    const-string v3, "Unable to initiate drag"

    invoke-static {v2, v3, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 987
    invoke-virtual {v6}, Landroid/view/Surface;->destroy()V

    :cond_2
    move v1, v15

    goto/16 :goto_0
.end method

.method private unregisterSecretModeReceiver()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mSecretModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 197
    return-void
.end method


# virtual methods
.method public MakeShortcutList(Ljava/util/List;)V
    .locals 28
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 380
    .local p1, appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v24, "layout_inflater"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/LayoutInflater;

    .line 382
    .local v10, inflater:Landroid/view/LayoutInflater;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "lock_screen_shortcut_number_of_apps"

    const/16 v26, 0x0

    invoke-static/range {v24 .. v26}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mNumOfSavedShortcut:I

    .line 383
    const-string v24, "LockScreenShortcutSettings"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "mNumOfSavedShortcut : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mNumOfSavedShortcut:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "lock_screen_shortcut_app_list"

    invoke-static/range {v24 .. v25}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 385
    .local v4, app_list:Ljava/lang/String;
    const-string v24, "LockScreenShortcutSettings"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "app_list : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const-string v11, ""

    .line 388
    .local v11, intent_content:Ljava/lang/String;
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 389
    .local v20, savedShortcutName:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 390
    .local v9, index:I
    const/4 v15, 0x0

    .line 391
    .local v15, old_index:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mNumOfSavedShortcut:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v7, v0, :cond_0

    .line 392
    move v15, v9

    .line 393
    const/16 v24, 0x3b

    move/from16 v0, v24

    invoke-virtual {v4, v0, v15}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    .line 394
    invoke-virtual {v4, v15, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 395
    const/16 v24, 0x2f

    const/16 v25, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v16

    .line 396
    .local v16, package_index:I
    const/16 v24, 0x0

    move/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 397
    .local v17, package_name:Ljava/lang/String;
    add-int/lit8 v24, v16, 0x1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 398
    .local v3, activity_name:Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    const-string v24, "LockScreenShortcutSettings"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Index ("

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ") : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " , package : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " , activity : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    add-int/lit8 v9, v9, 0x1

    .line 391
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 402
    .end local v3           #activity_name:Ljava/lang/String;
    .end local v16           #package_index:I
    .end local v17           #package_name:Ljava/lang/String;
    :cond_0
    const/16 v14, 0x1e

    .line 405
    .local v14, maximum_cache:I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v0, v14, :cond_1

    .line 406
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v14

    .line 408
    :cond_1
    const/4 v7, 0x0

    :goto_1
    if-ge v7, v14, :cond_2

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIconCache:Ljava/util/HashMap;

    move-object/from16 v25, v0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/pm/ResolveInfo;

    invoke-virtual/range {v24 .. v24}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v27

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->loadAppIcon(ILandroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v24

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 411
    :cond_2
    const/4 v7, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mNumOfSavedShortcut:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v7, v0, :cond_5

    .line 412
    const/4 v12, 0x0

    .local v12, j:I
    :goto_3
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v12, v0, :cond_4

    .line 413
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 414
    const-string v25, "LockScreenShortcutSettings"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "savedShortcutName : "

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutList:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 411
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 419
    .end local v12           #j:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutList:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mNumOfSavedShortcut:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_6

    .line 420
    const-string v24, "LockScreenShortcutSettings"

    const-string v25, "mShortCutList.size() < mNumOfSavedShortcut)"

    invoke-static/range {v24 .. v25}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutList:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mNumOfSavedShortcut:I

    .line 424
    :cond_6
    const v24, 0x7f0b022d

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 426
    .local v6, guideTextView:Landroid/widget/TextView;
    const-string v13, ".\n"

    .line 427
    .local v13, linefeed:Ljava/lang/String;
    const-string v24, "ja"

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_7

    .line 428
    const-string v13, "\n"

    .line 429
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 432
    :cond_7
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const v25, 0x7f0910d0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const v25, 0x7f0910d1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 433
    .local v5, content_string:Ljava/lang/String;
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    const v24, 0x7f0b022e

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/LinearLayout;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mMainLayout:Landroid/widget/LinearLayout;

    .line 436
    const v24, 0x7f0b022f

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/android/settings/lockscreenshortcut/DeleteView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mDeleteArea:Lcom/android/settings/lockscreenshortcut/DeleteView;

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mDeleteArea:Lcom/android/settings/lockscreenshortcut/DeleteView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mDeleteAreaDragListner:Landroid/view/View$OnDragListener;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/android/settings/lockscreenshortcut/DeleteView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mDeleteArea:Lcom/android/settings/lockscreenshortcut/DeleteView;

    move-object/from16 v24, v0

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Lcom/android/settings/lockscreenshortcut/DeleteView;->setVisibility(I)V

    .line 440
    const/4 v7, 0x0

    .line 441
    const/4 v7, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mNumOfSavedShortcut:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v7, v0, :cond_a

    .line 447
    const v24, 0x7f0400ce

    const/16 v25, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v10, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    .line 449
    .local v19, positionBarLayout:Landroid/view/View;
    const v24, 0x7f0b0229

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    .line 450
    .local v18, positionBar:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPositionBarDragListner:Landroid/view/View$OnDragListener;

    move-object/from16 v24, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 451
    sget v24, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->MAX_SHORTCUT_ICON:I

    const/16 v25, 0x4

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_8

    .line 452
    const/16 v24, 0x1e

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 454
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPositionBar:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mMainLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 457
    const v24, 0x7f0400cb

    const/16 v25, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v10, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v21

    .line 458
    .local v21, shorcutIconLayout:Landroid/view/View;
    const v24, 0x7f0b0226

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/ImageView;

    .line 459
    .local v22, shortcutIcon:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutList:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutList:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/pm/ResolveInfo;

    invoke-virtual/range {v24 .. v24}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v24

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->loadAppIcon(Landroid/content/pm/ActivityInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 460
    .local v8, icons:Landroid/graphics/drawable/Drawable;
    if-nez v8, :cond_9

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutList:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 463
    :cond_9
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIconDragListner:Landroid/view/View$OnDragListener;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutList:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutButton:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mMainLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 441
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_4

    .line 488
    .end local v8           #icons:Landroid/graphics/drawable/Drawable;
    .end local v18           #positionBar:Landroid/widget/ImageView;
    .end local v19           #positionBarLayout:Landroid/view/View;
    .end local v21           #shorcutIconLayout:Landroid/view/View;
    .end local v22           #shortcutIcon:Landroid/widget/ImageView;
    :cond_a
    const v24, 0x7f0400ce

    const/16 v25, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v10, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    .line 490
    .restart local v19       #positionBarLayout:Landroid/view/View;
    const v24, 0x7f0b0229

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    .line 491
    .restart local v18       #positionBar:Landroid/widget/ImageView;
    sget v24, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->MAX_SHORTCUT_ICON:I

    const/16 v25, 0x4

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_b

    .line 492
    const/16 v24, 0x1e

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 494
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPositionBarDragListner:Landroid/view/View$OnDragListener;

    move-object/from16 v24, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPositionBar:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mMainLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 499
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAdditionImage:Z

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->showAddButton(Z)V

    .line 501
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->adjustCursorWidth()V

    .line 504
    new-instance v23, Landroid/animation/LayoutTransition;

    invoke-direct/range {v23 .. v23}, Landroid/animation/LayoutTransition;-><init>()V

    .line 505
    .local v23, transition:Landroid/animation/LayoutTransition;
    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/animation/LayoutTransition;->getAnimator(I)Landroid/animation/Animator;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIconChangeAnimator:Landroid/animation/Animator;

    .line 506
    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIconChangeAnimator:Landroid/animation/Animator;

    move-object/from16 v25, v0

    invoke-virtual/range {v23 .. v25}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mMainLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 508
    return-void
.end method

.method public NmakeList(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 226
    .local p1, applist:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .local v0, NormalActivityList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v3, 0x0

    .line 229
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 230
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 233
    :cond_0
    iget-object v4, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4}, Landroid/content/pm/PackageManager;->getSecretPackageList()Ljava/util/List;

    move-result-object v3

    .line 234
    const-string v4, "LockScreenShortcutSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NmakeList NormalActivityList[size] : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const/4 v1, 0x0

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 237
    const/4 v2, 0x0

    .local v2, j:I
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 238
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 239
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 237
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 236
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 243
    .end local v2           #j:I
    :cond_3
    return-object v0
.end method

.method public SmakeList(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 248
    .local p1, applist:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 250
    .local v0, SecretActivityList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v2, "LockScreenShortcutSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SmakeList applist[size] : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 253
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 256
    :cond_0
    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 271
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 272
    iput-boolean v8, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIsOnSelecting:Z

    .line 273
    const/16 v5, 0x65

    if-ne p1, v5, :cond_3

    const/4 v5, -0x1

    if-ne p2, v5, :cond_3

    .line 274
    const-string v5, "selected_package"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 275
    .local v4, selected_package:Ljava/lang/String;
    const-string v5, "selected_activity"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 276
    .local v3, selected_activity:Ljava/lang/String;
    const-string v5, "clicked_view_index"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 277
    .local v0, clicked_view_index:I
    const-string v5, "LockScreenShortcutSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "selected_package : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const-string v5, "LockScreenShortcutSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "selected_activity : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const-string v5, "LockScreenShortcutSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "clicked_view_index : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const/4 v2, 0x0

    .line 283
    .local v2, resolve_info:Landroid/content/pm/ResolveInfo;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->appList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 284
    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->appList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->appList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 285
    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->appList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #resolve_info:Landroid/content/pm/ResolveInfo;
    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 290
    .restart local v2       #resolve_info:Landroid/content/pm/ResolveInfo;
    :cond_0
    iget v5, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mNumOfSavedShortcut:I

    if-ge v0, v5, :cond_2

    .line 291
    invoke-direct {p0, v0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->removeShortcut(I)V

    .line 292
    invoke-direct {p0, v0, v2}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->addShortcut(ILandroid/content/pm/ResolveInfo;)V

    .line 297
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->adjustCursorWidth()V

    .line 298
    invoke-direct {p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->saveShortcutList()V

    .line 299
    iput-boolean v9, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->Activityresult:Z

    .line 308
    .end local v0           #clicked_view_index:I
    .end local v1           #i:I
    .end local v2           #resolve_info:Landroid/content/pm/ResolveInfo;
    .end local v3           #selected_activity:Ljava/lang/String;
    .end local v4           #selected_package:Ljava/lang/String;
    :goto_2
    return-void

    .line 283
    .restart local v0       #clicked_view_index:I
    .restart local v1       #i:I
    .restart local v2       #resolve_info:Landroid/content/pm/ResolveInfo;
    .restart local v3       #selected_activity:Ljava/lang/String;
    .restart local v4       #selected_package:Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 294
    :cond_2
    invoke-direct {p0, v0, v2}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->addShortcut(ILandroid/content/pm/ResolveInfo;)V

    .line 295
    iget-boolean v5, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAdditionImage:Z

    invoke-direct {p0, v5}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->showAddButton(Z)V

    goto :goto_1

    .line 301
    .end local v0           #clicked_view_index:I
    .end local v1           #i:I
    .end local v2           #resolve_info:Landroid/content/pm/ResolveInfo;
    .end local v3           #selected_activity:Ljava/lang/String;
    .end local v4           #selected_package:Ljava/lang/String;
    :cond_3
    iget v5, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->pcheck:I

    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "personal_mode_enabled"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eq v5, v6, :cond_4

    .line 302
    iput-boolean v8, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->Activityresult:Z

    goto :goto_2

    .line 304
    :cond_4
    iput-boolean v9, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->Activityresult:Z

    goto :goto_2
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    .line 560
    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_screen_shortcut"

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 561
    invoke-direct {p0, p2}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->setEnable(Z)V

    .line 564
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.LOCK_SCREEN_SHORTCUT_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 565
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 566
    invoke-virtual {p0, v0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->sendBroadcast(Landroid/content/Intent;)V

    .line 567
    return-void

    .line 560
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/16 v10, 0x1e0

    const/16 v9, 0x10

    const/4 v8, -0x2

    const/4 v7, 0x0

    .line 312
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 315
    const-string v4, "window"

    invoke-virtual {p0, v4}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 316
    .local v1, display:Landroid/view/Display;
    const-string v4, "LockScreenShortcutSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LCD getWidth : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const-string v4, "LockScreenShortcutSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LCD getHeight : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const-string v4, "LockScreenShortcutSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LCD orientation : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/view/Display;->getOrientation()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-virtual {v1}, Landroid/view/Display;->getOrientation()I

    move-result v4

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_0

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v4

    if-gt v4, v10, :cond_1

    :cond_0
    invoke-virtual {v1}, Landroid/view/Display;->getOrientation()I

    move-result v4

    rem-int/lit8 v4, v4, 0x2

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v4

    if-le v4, v10, :cond_3

    .line 321
    :cond_1
    const/4 v4, 0x5

    sput v4, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->MAX_SHORTCUT_ICON:I

    .line 328
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0041

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sput v4, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->DEFAULT_CURSOR_WIDTH:I

    .line 329
    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0042

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sput v4, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->ICON_5_CURSOR_WIDTH:I

    .line 339
    const v4, 0x7f0400d1

    invoke-virtual {p0, v4}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->setContentView(I)V

    .line 341
    new-instance v4, Landroid/widget/Switch;

    invoke-direct {v4, p0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 343
    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f001b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 344
    .local v2, padding:I
    iget-object v4, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v7, v7, v2, v7}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 345
    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v9, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 346
    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v6, Landroid/app/ActionBar$LayoutParams;

    const/16 v7, 0x15

    invoke-direct {v6, v8, v8, v7}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v5, v6}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 350
    iget-object v4, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 351
    new-instance v4, Lcom/android/settings/lockscreenshortcut/IconResizer;

    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/settings/lockscreenshortcut/IconResizer;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIconResizer:Lcom/android/settings/lockscreenshortcut/IconResizer;

    .line 352
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutButton:Ljava/util/ArrayList;

    .line 353
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPositionBar:Ljava/util/ArrayList;

    .line 354
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutList:Ljava/util/ArrayList;

    .line 355
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIconCache:Ljava/util/HashMap;

    .line 357
    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 358
    .local v3, resources:Landroid/content/res/Resources;
    const v4, 0x7f0f003f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIconSize:I

    .line 359
    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPm:Landroid/content/pm/PackageManager;

    .line 360
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 361
    .local v0, LauncherIntent:Landroid/content/Intent;
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 365
    iget-object v4, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPm:Landroid/content/pm/PackageManager;

    const/16 v5, 0x20

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->appList:Ljava/util/List;

    .line 375
    iget-object v4, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->appList:Ljava/util/List;

    invoke-virtual {p0, v4}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->MakeShortcutList(Ljava/util/List;)V

    .line 377
    return-void

    .line 322
    .end local v0           #LauncherIntent:Landroid/content/Intent;
    .end local v2           #padding:I
    .end local v3           #resources:Landroid/content/res/Resources;
    :cond_3
    const-string v4, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "TMB"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "SPR"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 326
    :cond_4
    const/4 v4, 0x4

    sput v4, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->MAX_SHORTCUT_ICON:I

    goto/16 :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 543
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 544
    invoke-direct {p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->unregisterSecretModeReceiver()V

    .line 545
    return-void
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 511
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 513
    invoke-direct {p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Landroid/app/enterprise/RestrictionPolicy;->isLockScreenViewAllowed(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 515
    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5}, Landroid/widget/Switch;->setChecked(Z)V

    .line 516
    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 532
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mDeleteArea:Lcom/android/settings/lockscreenshortcut/DeleteView;

    if-eqz v3, :cond_2

    .line 533
    const-string v3, "window"

    invoke-virtual {p0, v3}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 534
    .local v0, d:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 535
    .local v1, rotation:I
    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mDeleteArea:Lcom/android/settings/lockscreenshortcut/DeleteView;

    if-eq v1, v4, :cond_0

    const/4 v6, 0x3

    if-ne v1, v6, :cond_1

    :cond_0
    move v5, v4

    :cond_1
    invoke-virtual {v3, v5}, Lcom/android/settings/lockscreenshortcut/DeleteView;->setOrienationMode(Z)V

    .line 537
    .end local v0           #d:Landroid/view/Display;
    .end local v1           #rotation:I
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->registerSecretModeReceiver()V

    .line 538
    return-void

    .line 519
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "lock_screen_shortcut"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_4

    move v2, v4

    .line 520
    .local v2, state:Z
    :goto_1
    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 521
    invoke-direct {p0, v2}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->setEnable(Z)V

    .line 523
    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .end local v2           #state:Z
    :cond_4
    move v2, v5

    .line 519
    goto :goto_1
.end method

.class public Lcom/android/settings/applications/ApplicationsState;
.super Ljava/lang/Object;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;,
        Lcom/android/settings/applications/ApplicationsState$Session;,
        Lcom/android/settings/applications/ApplicationsState$MainHandler;,
        Lcom/android/settings/applications/ApplicationsState$PackageIntentReceiver;,
        Lcom/android/settings/applications/ApplicationsState$AppEntry;,
        Lcom/android/settings/applications/ApplicationsState$SizeInfo;,
        Lcom/android/settings/applications/ApplicationsState$AppFilter;,
        Lcom/android/settings/applications/ApplicationsState$Callbacks;
    }
.end annotation


# static fields
.field public static final ALL_ENABLED_FILTER:Lcom/android/settings/applications/ApplicationsState$AppFilter;

.field public static final ALPHA_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final DISABLED_FILTER:Lcom/android/settings/applications/ApplicationsState$AppFilter;

.field public static final EXTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final INSTALLEDDATE:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final INTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final ON_SD_CARD_FILTER:Lcom/android/settings/applications/ApplicationsState$AppFilter;

.field static final REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

.field public static final SIZE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final THIRD_PARTY_FILTER:Lcom/android/settings/applications/ApplicationsState$AppFilter;

.field static sInstance:Lcom/android/settings/applications/ApplicationsState;

.field static final sLock:Ljava/lang/Object;


# instance fields
.field final mActiveSessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$Session;",
            ">;"
        }
    .end annotation
.end field

.field final mAppEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field mApplications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mBackgroundHandler:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

.field final mContext:Landroid/content/Context;

.field mCurComputingSizePkg:Ljava/lang/String;

.field mCurId:J

.field final mEntriesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field mHaveDisabledApps:Z

.field final mInterestingConfigChanges:Lcom/android/settings/applications/InterestingConfigChanges;

.field final mMainHandler:Lcom/android/settings/applications/ApplicationsState$MainHandler;

.field mPackageIntentReceiver:Lcom/android/settings/applications/ApplicationsState$PackageIntentReceiver;

.field final mPm:Landroid/content/pm/PackageManager;

.field final mRebuildingSessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$Session;",
            ">;"
        }
    .end annotation
.end field

.field mResumed:Z

.field final mRetrieveFlags:I

.field final mSessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$Session;",
            ">;"
        }
    .end annotation
.end field

.field mSessionsChanged:Z

.field final mThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-string v0, "\\p{InCombiningDiacriticalMarks}+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/settings/applications/ApplicationsState;->REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

    .line 164
    new-instance v0, Lcom/android/settings/applications/ApplicationsState$1;

    invoke-direct {v0}, Lcom/android/settings/applications/ApplicationsState$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    .line 179
    new-instance v0, Lcom/android/settings/applications/ApplicationsState$2;

    invoke-direct {v0}, Lcom/android/settings/applications/ApplicationsState$2;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ApplicationsState;->SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 190
    new-instance v0, Lcom/android/settings/applications/ApplicationsState$3;

    invoke-direct {v0}, Lcom/android/settings/applications/ApplicationsState$3;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ApplicationsState;->INSTALLEDDATE:Ljava/util/Comparator;

    .line 200
    new-instance v0, Lcom/android/settings/applications/ApplicationsState$4;

    invoke-direct {v0}, Lcom/android/settings/applications/ApplicationsState$4;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ApplicationsState;->INTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 211
    new-instance v0, Lcom/android/settings/applications/ApplicationsState$5;

    invoke-direct {v0}, Lcom/android/settings/applications/ApplicationsState$5;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ApplicationsState;->EXTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 222
    new-instance v0, Lcom/android/settings/applications/ApplicationsState$6;

    invoke-direct {v0}, Lcom/android/settings/applications/ApplicationsState$6;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ApplicationsState;->THIRD_PARTY_FILTER:Lcom/android/settings/applications/ApplicationsState$AppFilter;

    .line 237
    new-instance v0, Lcom/android/settings/applications/ApplicationsState$7;

    invoke-direct {v0}, Lcom/android/settings/applications/ApplicationsState$7;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ApplicationsState;->ON_SD_CARD_FILTER:Lcom/android/settings/applications/ApplicationsState$AppFilter;

    .line 251
    new-instance v0, Lcom/android/settings/applications/ApplicationsState$8;

    invoke-direct {v0}, Lcom/android/settings/applications/ApplicationsState$8;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ApplicationsState;->DISABLED_FILTER:Lcom/android/settings/applications/ApplicationsState$AppFilter;

    .line 264
    new-instance v0, Lcom/android/settings/applications/ApplicationsState$9;

    invoke-direct {v0}, Lcom/android/settings/applications/ApplicationsState$9;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ApplicationsState;->ALL_ENABLED_FILTER:Lcom/android/settings/applications/ApplicationsState$AppFilter;

    .line 425
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ApplicationsState;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/app/Application;)V
    .locals 4
    .parameter "app"

    .prologue
    const-wide/16 v1, 0x1

    .line 437
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 287
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    .line 288
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->mRebuildingSessions:Ljava/util/ArrayList;

    .line 289
    new-instance v0, Lcom/android/settings/applications/InterestingConfigChanges;

    invoke-direct {v0}, Lcom/android/settings/applications/InterestingConfigChanges;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->mInterestingConfigChanges:Lcom/android/settings/applications/InterestingConfigChanges;

    .line 290
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    .line 291
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    .line 292
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    .line 293
    iput-wide v1, p0, Lcom/android/settings/applications/ApplicationsState;->mCurId:J

    .line 298
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    .line 421
    new-instance v0, Lcom/android/settings/applications/ApplicationsState$MainHandler;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ApplicationsState$MainHandler;-><init>(Lcom/android/settings/applications/ApplicationsState;)V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->mMainHandler:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    .line 438
    iput-object p1, p0, Lcom/android/settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    .line 439
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    .line 440
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ApplicationsState.Loader"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->mThread:Landroid/os/HandlerThread;

    .line 442
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 443
    new-instance v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;-><init>(Lcom/android/settings/applications/ApplicationsState;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    .line 446
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_0

    .line 447
    const v0, 0xa200

    iput v0, p0, Lcom/android/settings/applications/ApplicationsState;->mRetrieveFlags:I

    .line 469
    :goto_0
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 471
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 475
    return-void

    .line 451
    :cond_0
    const v0, 0x8200

    iput v0, p0, Lcom/android/settings/applications/ApplicationsState;->mRetrieveFlags:I

    goto :goto_0

    .line 474
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 472
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method static synthetic access$100(Lcom/android/settings/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/settings/applications/ApplicationsState;->getTotalInternalSize(Landroid/content/pm/PackageStats;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/settings/applications/ApplicationsState;J)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/ApplicationsState;->getSizeStr(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/settings/applications/ApplicationsState;->getTotalExternalSize(Landroid/content/pm/PackageStats;)J

    move-result-wide v0

    return-wide v0
.end method

.method static getInstance(Landroid/app/Application;)Lcom/android/settings/applications/ApplicationsState;
    .locals 2
    .parameter "app"

    .prologue
    .line 429
    sget-object v1, Lcom/android/settings/applications/ApplicationsState;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 430
    :try_start_0
    sget-object v0, Lcom/android/settings/applications/ApplicationsState;->sInstance:Lcom/android/settings/applications/ApplicationsState;

    if-nez v0, :cond_0

    .line 431
    new-instance v0, Lcom/android/settings/applications/ApplicationsState;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ApplicationsState;-><init>(Landroid/app/Application;)V

    sput-object v0, Lcom/android/settings/applications/ApplicationsState;->sInstance:Lcom/android/settings/applications/ApplicationsState;

    .line 433
    :cond_0
    sget-object v0, Lcom/android/settings/applications/ApplicationsState;->sInstance:Lcom/android/settings/applications/ApplicationsState;

    monitor-exit v1

    return-object v0

    .line 434
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getSizeStr(J)Ljava/lang/String;
    .locals 2
    .parameter "size"

    .prologue
    .line 879
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 880
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 882
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTotalExternalSize(Landroid/content/pm/PackageStats;)J
    .locals 4
    .parameter "ps"

    .prologue
    .line 868
    if-eqz p1, :cond_0

    .line 871
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalDataSize:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalMediaSize:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalObbSize:J

    add-long/2addr v0, v2

    .line 875
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x2

    goto :goto_0
.end method

.method private getTotalInternalSize(Landroid/content/pm/PackageStats;)J
    .locals 4
    .parameter "ps"

    .prologue
    .line 861
    if-eqz p1, :cond_0

    .line 862
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->codeSize:J

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->dataSize:J

    add-long/2addr v0, v2

    .line 864
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x2

    goto :goto_0
.end method

.method public static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"

    .prologue
    .line 67
    sget-object v1, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    invoke-static {p0, v1}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, tmp:Ljava/lang/String;
    sget-object v1, Lcom/android/settings/applications/ApplicationsState;->REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method addPackage(Ljava/lang/String;)V
    .locals 5
    .parameter "pkgName"

    .prologue
    .line 772
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 773
    :try_start_1
    const-string v1, "ApplicationsState"

    const-string v3, "addPackage acquired lock"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    const-string v1, "ApplicationsState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    iget-boolean v1, p0, Lcom/android/settings/applications/ApplicationsState;->mResumed:Z

    if-nez v1, :cond_0

    .line 779
    const-string v1, "ApplicationsState"

    const-string v3, "addPackage release lock: not resumed"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    monitor-exit v2

    .line 806
    :goto_0
    return-void

    .line 782
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ApplicationsState;->indexOfApplicationInfoLocked(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 783
    const-string v1, "ApplicationsState"

    const-string v3, "Package already exists!"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    const-string v1, "ApplicationsState"

    const-string v3, "addPackage release lock: already exists"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    monitor-exit v2

    goto :goto_0

    .line 803
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 804
    :catch_0
    move-exception v1

    goto :goto_0

    .line 787
    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    iget v3, p0, Lcom/android/settings/applications/ApplicationsState;->mRetrieveFlags:I

    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 788
    .local v0, info:Landroid/content/pm/ApplicationInfo;
    iget-boolean v1, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v1, :cond_3

    .line 789
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    .line 791
    monitor-exit v2

    goto :goto_0

    .line 793
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/applications/ApplicationsState;->mHaveDisabledApps:Z

    .line 795
    :cond_3
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 796
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 797
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 799
    :cond_4
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->mMainHandler:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 800
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->mMainHandler:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z

    .line 802
    :cond_5
    const-string v1, "ApplicationsState"

    const-string v3, "addPackage releasing lock"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method doPauseIfNeededLocked()V
    .locals 2

    .prologue
    .line 695
    iget-boolean v1, p0, Lcom/android/settings/applications/ApplicationsState;->mResumed:Z

    if-nez v1, :cond_1

    .line 708
    :cond_0
    :goto_0
    return-void

    .line 698
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 699
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/ApplicationsState$Session;

    iget-boolean v1, v1, Lcom/android/settings/applications/ApplicationsState$Session;->mResumed:Z

    if-nez v1, :cond_0

    .line 698
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 703
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/applications/ApplicationsState;->mResumed:Z

    .line 704
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/settings/applications/ApplicationsState$PackageIntentReceiver;

    if-eqz v1, :cond_0

    .line 705
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/settings/applications/ApplicationsState$PackageIntentReceiver;

    invoke-virtual {v1}, Lcom/android/settings/applications/ApplicationsState$PackageIntentReceiver;->unregisterReceiver()V

    .line 706
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/settings/applications/ApplicationsState$PackageIntentReceiver;

    goto :goto_0
.end method

.method doResumeIfNeededLocked()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 642
    iget-boolean v3, p0, Lcom/android/settings/applications/ApplicationsState;->mResumed:Z

    if-eqz v3, :cond_1

    .line 688
    :cond_0
    :goto_0
    return-void

    .line 645
    :cond_1
    iput-boolean v5, p0, Lcom/android/settings/applications/ApplicationsState;->mResumed:Z

    .line 646
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/settings/applications/ApplicationsState$PackageIntentReceiver;

    if-nez v3, :cond_2

    .line 647
    new-instance v3, Lcom/android/settings/applications/ApplicationsState$PackageIntentReceiver;

    invoke-direct {v3, p0, v7}, Lcom/android/settings/applications/ApplicationsState$PackageIntentReceiver;-><init>(Lcom/android/settings/applications/ApplicationsState;Lcom/android/settings/applications/ApplicationsState$1;)V

    iput-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/settings/applications/ApplicationsState$PackageIntentReceiver;

    .line 648
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/settings/applications/ApplicationsState$PackageIntentReceiver;

    invoke-virtual {v3}, Lcom/android/settings/applications/ApplicationsState$PackageIntentReceiver;->registerReceiver()V

    .line 650
    :cond_2
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    iget v4, p0, Lcom/android/settings/applications/ApplicationsState;->mRetrieveFlags:I

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    .line 651
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    if-nez v3, :cond_3

    .line 652
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    .line 655
    :cond_3
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mInterestingConfigChanges:Lcom/android/settings/applications/InterestingConfigChanges;

    iget-object v4, p0, Lcom/android/settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 658
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 659
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 666
    :cond_4
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/settings/applications/ApplicationsState;->mHaveDisabledApps:Z

    .line 667
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_9

    .line 668
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 671
    .local v2, info:Landroid/content/pm/ApplicationInfo;
    iget-boolean v3, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v3, :cond_8

    .line 672
    iget v3, v2, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_7

    .line 673
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 674
    add-int/lit8 v1, v1, -0x1

    .line 667
    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 661
    .end local v1           #i:I
    .end local v2           #info:Landroid/content/pm/ApplicationInfo;
    :cond_6
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 662
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iput-boolean v5, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->sizeStale:Z

    .line 661
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 677
    .restart local v2       #info:Landroid/content/pm/ApplicationInfo;
    :cond_7
    iput-boolean v5, p0, Lcom/android/settings/applications/ApplicationsState;->mHaveDisabledApps:Z

    .line 679
    :cond_8
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    iget-object v4, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 680
    .local v0, entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;
    if-eqz v0, :cond_5

    .line 681
    iput-object v2, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    goto :goto_2

    .line 684
    .end local v0           #entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;
    .end local v2           #info:Landroid/content/pm/ApplicationInfo;
    :cond_9
    iput-object v7, p0, Lcom/android/settings/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    .line 685
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    invoke-virtual {v3, v6}, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 686
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    invoke-virtual {v3, v6}, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method

.method ensureIcon(Lcom/android/settings/applications/ApplicationsState$AppEntry;)V
    .locals 2
    .parameter "entry"

    .prologue
    .line 729
    iget-object v0, p1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 735
    :goto_0
    return-void

    .line 732
    :cond_0
    monitor-enter p1

    .line 733
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/applications/ApplicationsState$AppEntry;->ensureIconLocked(Landroid/content/Context;Landroid/content/pm/PackageManager;)Z

    .line 734
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getEntry(Ljava/lang/String;)Lcom/android/settings/applications/ApplicationsState$AppEntry;
    .locals 6
    .parameter "packageName"

    .prologue
    .line 711
    const-string v3, "ApplicationsState"

    const-string v4, "getEntry about to acquire lock..."

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    iget-object v4, p0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 713
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 714
    .local v0, entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;
    if-nez v0, :cond_0

    .line 715
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 716
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 717
    .local v2, info:Landroid/content/pm/ApplicationInfo;
    iget-object v3, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 718
    invoke-virtual {p0, v2}, Lcom/android/settings/applications/ApplicationsState;->getEntryLocked(Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v0

    .line 723
    .end local v1           #i:I
    .end local v2           #info:Landroid/content/pm/ApplicationInfo;
    :cond_0
    const-string v3, "ApplicationsState"

    const-string v5, "...getEntry releasing lock"

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    monitor-exit v4

    return-object v0

    .line 715
    .restart local v1       #i:I
    .restart local v2       #info:Landroid/content/pm/ApplicationInfo;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 725
    .end local v0           #entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;
    .end local v1           #i:I
    .end local v2           #info:Landroid/content/pm/ApplicationInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method getEntryLocked(Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/applications/ApplicationsState$AppEntry;
    .locals 6
    .parameter "info"

    .prologue
    .line 845
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 846
    .local v0, entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;
    const-string v1, "ApplicationsState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Looking up entry of pkg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    if-nez v0, :cond_1

    .line 848
    const-string v1, "ApplicationsState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating AppEntry for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    new-instance v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .end local v0           #entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/settings/applications/ApplicationsState;->mCurId:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/android/settings/applications/ApplicationsState;->mCurId:J

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/android/settings/applications/ApplicationsState$AppEntry;-><init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;J)V

    .line 850
    .restart local v0       #entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 851
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 855
    :cond_0
    :goto_0
    return-object v0

    .line 852
    :cond_1
    iget-object v1, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eq v1, p1, :cond_0

    .line 853
    iput-object p1, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    goto :goto_0
.end method

.method public haveDisabledApps()Z
    .locals 1

    .prologue
    .line 691
    iget-boolean v0, p0, Lcom/android/settings/applications/ApplicationsState;->mHaveDisabledApps:Z

    return v0
.end method

.method indexOfApplicationInfoLocked(Ljava/lang/String;)I
    .locals 2
    .parameter "pkgName"

    .prologue
    .line 762
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 763
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 767
    .end local v0           #i:I
    :goto_1
    return v0

    .line 762
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 767
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method invalidatePackage(Ljava/lang/String;)V
    .locals 0
    .parameter "pkgName"

    .prologue
    .line 840
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ApplicationsState;->removePackage(Ljava/lang/String;)V

    .line 841
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ApplicationsState;->addPackage(Ljava/lang/String;)V

    .line 842
    return-void
.end method

.method public newSession(Lcom/android/settings/applications/ApplicationsState$Callbacks;)Lcom/android/settings/applications/ApplicationsState$Session;
    .locals 3
    .parameter "callbacks"

    .prologue
    .line 634
    new-instance v0, Lcom/android/settings/applications/ApplicationsState$Session;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/applications/ApplicationsState$Session;-><init>(Lcom/android/settings/applications/ApplicationsState;Lcom/android/settings/applications/ApplicationsState$Callbacks;)V

    .line 635
    .local v0, s:Lcom/android/settings/applications/ApplicationsState$Session;
    iget-object v2, p0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 636
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 637
    monitor-exit v2

    .line 638
    return-object v0

    .line 637
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method rebuildActiveSessions()V
    .locals 4

    .prologue
    .line 358
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 359
    :try_start_0
    iget-boolean v2, p0, Lcom/android/settings/applications/ApplicationsState;->mSessionsChanged:Z

    if-nez v2, :cond_0

    .line 360
    monitor-exit v3

    .line 370
    :goto_0
    return-void

    .line 362
    :cond_0
    iget-object v2, p0, Lcom/android/settings/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 363
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/settings/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 364
    iget-object v2, p0, Lcom/android/settings/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/ApplicationsState$Session;

    .line 365
    .local v1, s:Lcom/android/settings/applications/ApplicationsState$Session;
    iget-boolean v2, v1, Lcom/android/settings/applications/ApplicationsState$Session;->mResumed:Z

    if-eqz v2, :cond_1

    .line 366
    iget-object v2, p0, Lcom/android/settings/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 369
    .end local v1           #s:Lcom/android/settings/applications/ApplicationsState$Session;
    :cond_2
    monitor-exit v3

    goto :goto_0

    .end local v0           #i:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method removePackage(Ljava/lang/String;)V
    .locals 8
    .parameter "pkgName"

    .prologue
    .line 809
    iget-object v5, p0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 810
    :try_start_0
    const-string v4, "ApplicationsState"

    const-string v6, "removePackage acquired lock"

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ApplicationsState;->indexOfApplicationInfoLocked(Ljava/lang/String;)I

    move-result v2

    .line 812
    .local v2, idx:I
    const-string v4, "ApplicationsState"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removePackage: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " @ "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    if-ltz v2, :cond_2

    .line 814
    iget-object v4, p0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 815
    .local v0, entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;
    const-string v4, "ApplicationsState"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removePackage: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    if-eqz v0, :cond_0

    .line 817
    iget-object v4, p0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    iget-object v4, p0, Lcom/android/settings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 820
    :cond_0
    iget-object v4, p0, Lcom/android/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 821
    .local v3, info:Landroid/content/pm/ApplicationInfo;
    iget-object v4, p0, Lcom/android/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 822
    iget-boolean v4, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v4, :cond_1

    .line 823
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/settings/applications/ApplicationsState;->mHaveDisabledApps:Z

    .line 824
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 825
    iget-object v4, p0, Lcom/android/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    iget-boolean v4, v4, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v4, :cond_3

    .line 826
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settings/applications/ApplicationsState;->mHaveDisabledApps:Z

    .line 831
    .end local v1           #i:I
    :cond_1
    iget-object v4, p0, Lcom/android/settings/applications/ApplicationsState;->mMainHandler:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 832
    iget-object v4, p0, Lcom/android/settings/applications/ApplicationsState;->mMainHandler:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z

    .line 835
    .end local v0           #entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;
    .end local v3           #info:Landroid/content/pm/ApplicationInfo;
    :cond_2
    const-string v4, "ApplicationsState"

    const-string v6, "removePackage releasing lock"

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    monitor-exit v5

    .line 837
    return-void

    .line 824
    .restart local v0       #entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;
    .restart local v1       #i:I
    .restart local v3       #info:Landroid/content/pm/ApplicationInfo;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 836
    .end local v0           #entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;
    .end local v1           #i:I
    .end local v2           #idx:I
    .end local v3           #info:Landroid/content/pm/ApplicationInfo;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method requestSize(Ljava/lang/String;)V
    .locals 4
    .parameter "packageName"

    .prologue
    .line 738
    const-string v1, "ApplicationsState"

    const-string v2, "requestSize about to acquire lock..."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    iget-object v2, p0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 740
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 741
    .local v0, entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;
    if-eqz v0, :cond_0

    .line 742
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    .line 744
    :cond_0
    const-string v1, "ApplicationsState"

    const-string v3, "...requestSize releasing lock"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    monitor-exit v2

    .line 746
    return-void

    .line 745
    .end local v0           #entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method sumCacheSizes()J
    .locals 7

    .prologue
    .line 749
    const-wide/16 v1, 0x0

    .line 750
    .local v1, sum:J
    const-string v3, "ApplicationsState"

    const-string v4, "sumCacheSizes about to acquire lock..."

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    iget-object v4, p0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 752
    :try_start_0
    const-string v3, "ApplicationsState"

    const-string v5, "-> sumCacheSizes now has lock"

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 754
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v5, v3, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->cacheSize:J

    add-long/2addr v1, v5

    .line 753
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 756
    :cond_0
    const-string v3, "ApplicationsState"

    const-string v5, "...sumCacheSizes releasing lock"

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    monitor-exit v4

    .line 758
    return-wide v1

    .line 757
    .end local v0           #i:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

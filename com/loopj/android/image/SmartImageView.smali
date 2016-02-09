.class public Lcom/loopj/android/image/SmartImageView;
.super Landroid/widget/ImageView;
.source "SmartImageView.java"


# static fields
.field private static final LOADING_THREADS:I = 0x4

.field private static threadPool:Ljava/util/concurrent/ExecutorService;


# instance fields
.field public ProgressBarLoading:Landroid/widget/ProgressBar;

.field private currentTask:Lcom/loopj/android/image/SmartImageTask;

.field private gCornerRadius:I

.field private gIsRounded:Z

.field private gResource_no_image_available:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/loopj/android/image/SmartImageView;->threadPool:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 25
    iput-boolean v1, p0, Lcom/loopj/android/image/SmartImageView;->gIsRounded:Z

    .line 26
    iput v1, p0, Lcom/loopj/android/image/SmartImageView;->gCornerRadius:I

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loopj/android/image/SmartImageView;->ProgressBarLoading:Landroid/widget/ProgressBar;

    .line 30
    iput v1, p0, Lcom/loopj/android/image/SmartImageView;->gResource_no_image_available:I

    .line 35
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/loopj/android/image/SmartImageView;->buildDrawingCache(Z)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    iput-boolean v1, p0, Lcom/loopj/android/image/SmartImageView;->gIsRounded:Z

    .line 26
    iput v1, p0, Lcom/loopj/android/image/SmartImageView;->gCornerRadius:I

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loopj/android/image/SmartImageView;->ProgressBarLoading:Landroid/widget/ProgressBar;

    .line 30
    iput v1, p0, Lcom/loopj/android/image/SmartImageView;->gResource_no_image_available:I

    .line 41
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/loopj/android/image/SmartImageView;->buildDrawingCache(Z)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    iput-boolean v1, p0, Lcom/loopj/android/image/SmartImageView;->gIsRounded:Z

    .line 26
    iput v1, p0, Lcom/loopj/android/image/SmartImageView;->gCornerRadius:I

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loopj/android/image/SmartImageView;->ProgressBarLoading:Landroid/widget/ProgressBar;

    .line 30
    iput v1, p0, Lcom/loopj/android/image/SmartImageView;->gResource_no_image_available:I

    .line 47
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/loopj/android/image/SmartImageView;->buildDrawingCache(Z)V

    .line 48
    return-void
.end method

.method static synthetic access$0(Lcom/loopj/android/image/SmartImageView;)I
    .registers 2

    .prologue
    .line 30
    iget v0, p0, Lcom/loopj/android/image/SmartImageView;->gResource_no_image_available:I

    return v0
.end method

.method static synthetic access$1(Lcom/loopj/android/image/SmartImageView;)Z
    .registers 2

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/loopj/android/image/SmartImageView;->gIsRounded:Z

    return v0
.end method

.method static synthetic access$2(Lcom/loopj/android/image/SmartImageView;)I
    .registers 2

    .prologue
    .line 26
    iget v0, p0, Lcom/loopj/android/image/SmartImageView;->gCornerRadius:I

    return v0
.end method

.method public static cancelAllTasks()V
    .registers 1

    .prologue
    .line 214
    sget-object v0, Lcom/loopj/android/image/SmartImageView;->threadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 215
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/loopj/android/image/SmartImageView;->threadPool:Ljava/util/concurrent/ExecutorService;

    .line 216
    return-void
.end method


# virtual methods
.method protected finalize()V
    .registers 1

    .prologue
    .line 222
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 52
    return-void
.end method

.method public setCoverUrl(Ljava/lang/String;ZIZIIII)V
    .registers 16
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "is_rounded"    # Z
    .param p3, "corner_radius"    # I
    .param p4, "is_cache"    # Z
    .param p5, "defaultImage"    # I
    .param p6, "reqWidth"    # I
    .param p7, "reqHeight"    # I
    .param p8, "cover_offset_y"    # I

    .prologue
    const/4 v1, 0x0

    .line 73
    iput-boolean p2, p0, Lcom/loopj/android/image/SmartImageView;->gIsRounded:Z

    .line 74
    iput p3, p0, Lcom/loopj/android/image/SmartImageView;->gCornerRadius:I

    .line 75
    invoke-virtual {p0, p5}, Lcom/loopj/android/image/SmartImageView;->setImageResource(I)V

    .line 76
    invoke-virtual {p0, v1}, Lcom/loopj/android/image/SmartImageView;->setAlpha(I)V

    .line 77
    iget-object v0, p0, Lcom/loopj/android/image/SmartImageView;->ProgressBarLoading:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_14

    .line 78
    iget-object v0, p0, Lcom/loopj/android/image/SmartImageView;->ProgressBarLoading:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 81
    :cond_14
    if-nez p5, :cond_27

    .line 82
    new-instance v0, Lcom/loopj/android/image/WebImage;

    const v3, 0x7f02039f

    move-object v1, p1

    move v2, p4

    move v4, p6

    move v5, p7

    move v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/loopj/android/image/WebImage;-><init>(Ljava/lang/String;ZIIII)V

    invoke-virtual {p0, v0}, Lcom/loopj/android/image/SmartImageView;->setImage(Lcom/loopj/android/image/SmartImage;)V

    .line 86
    :goto_26
    return-void

    .line 84
    :cond_27
    new-instance v0, Lcom/loopj/android/image/WebImage;

    move-object v1, p1

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    move v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/loopj/android/image/WebImage;-><init>(Ljava/lang/String;ZIIII)V

    invoke-virtual {p0, v0}, Lcom/loopj/android/image/SmartImageView;->setImage(Lcom/loopj/android/image/SmartImage;)V

    goto :goto_26
.end method

.method public setImage(Lcom/loopj/android/image/SmartImage;)V
    .registers 3
    .param p1, "image"    # Lcom/loopj/android/image/SmartImage;

    .prologue
    const/4 v0, 0x0

    .line 98
    invoke-virtual {p0, p1, v0, v0}, Lcom/loopj/android/image/SmartImageView;->setImage(Lcom/loopj/android/image/SmartImage;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 99
    return-void
.end method

.method public setImage(Lcom/loopj/android/image/SmartImage;Ljava/lang/Integer;)V
    .registers 3
    .param p1, "image"    # Lcom/loopj/android/image/SmartImage;
    .param p2, "fallbackResource"    # Ljava/lang/Integer;

    .prologue
    .line 102
    invoke-virtual {p0, p1, p2, p2}, Lcom/loopj/android/image/SmartImageView;->setImage(Lcom/loopj/android/image/SmartImage;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 103
    return-void
.end method

.method public setImage(Lcom/loopj/android/image/SmartImage;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 6
    .param p1, "image"    # Lcom/loopj/android/image/SmartImage;
    .param p2, "fallbackResource"    # Ljava/lang/Integer;
    .param p3, "loadingResource"    # Ljava/lang/Integer;

    .prologue
    .line 107
    if-eqz p3, :cond_9

    .line 108
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/loopj/android/image/SmartImageView;->setImageResource(I)V

    .line 112
    :cond_9
    iget-object v0, p0, Lcom/loopj/android/image/SmartImageView;->currentTask:Lcom/loopj/android/image/SmartImageTask;

    if-eqz v0, :cond_15

    .line 113
    iget-object v0, p0, Lcom/loopj/android/image/SmartImageView;->currentTask:Lcom/loopj/android/image/SmartImageTask;

    invoke-virtual {v0}, Lcom/loopj/android/image/SmartImageTask;->cancel()V

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loopj/android/image/SmartImageView;->currentTask:Lcom/loopj/android/image/SmartImageTask;

    .line 118
    :cond_15
    new-instance v0, Lcom/loopj/android/image/SmartImageTask;

    invoke-virtual {p0}, Lcom/loopj/android/image/SmartImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/loopj/android/image/SmartImageTask;-><init>(Landroid/content/Context;Lcom/loopj/android/image/SmartImage;)V

    iput-object v0, p0, Lcom/loopj/android/image/SmartImageView;->currentTask:Lcom/loopj/android/image/SmartImageTask;

    .line 119
    iget-object v0, p0, Lcom/loopj/android/image/SmartImageView;->currentTask:Lcom/loopj/android/image/SmartImageTask;

    new-instance v1, Lcom/loopj/android/image/SmartImageView$1;

    invoke-direct {v1, p0, p2}, Lcom/loopj/android/image/SmartImageView$1;-><init>(Lcom/loopj/android/image/SmartImageView;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Lcom/loopj/android/image/SmartImageTask;->setOnCompleteHandler(Lcom/loopj/android/image/SmartImageTask$OnCompleteHandler;)V

    .line 210
    sget-object v0, Lcom/loopj/android/image/SmartImageView;->threadPool:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/loopj/android/image/SmartImageView;->currentTask:Lcom/loopj/android/image/SmartImageTask;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 211
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;ZIZIII)V
    .registers 14
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "is_rounded"    # Z
    .param p3, "corner_radius"    # I
    .param p4, "is_cache"    # Z
    .param p5, "defaultImage"    # I
    .param p6, "reqWidth"    # I
    .param p7, "reqHeight"    # I

    .prologue
    const/4 v1, 0x0

    .line 56
    iput-boolean p2, p0, Lcom/loopj/android/image/SmartImageView;->gIsRounded:Z

    .line 57
    iput p3, p0, Lcom/loopj/android/image/SmartImageView;->gCornerRadius:I

    .line 58
    iput p5, p0, Lcom/loopj/android/image/SmartImageView;->gResource_no_image_available:I

    .line 59
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/loopj/android/image/SmartImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 60
    invoke-virtual {p0, v1}, Lcom/loopj/android/image/SmartImageView;->setAlpha(I)V

    .line 61
    iget-object v0, p0, Lcom/loopj/android/image/SmartImageView;->ProgressBarLoading:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_17

    .line 62
    iget-object v0, p0, Lcom/loopj/android/image/SmartImageView;->ProgressBarLoading:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 65
    :cond_17
    if-nez p5, :cond_29

    .line 66
    new-instance v0, Lcom/loopj/android/image/WebImage;

    const v3, 0x7f02039f

    move-object v1, p1

    move v2, p4

    move v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/loopj/android/image/WebImage;-><init>(Ljava/lang/String;ZIII)V

    invoke-virtual {p0, v0}, Lcom/loopj/android/image/SmartImageView;->setImage(Lcom/loopj/android/image/SmartImage;)V

    .line 70
    :goto_28
    return-void

    .line 68
    :cond_29
    new-instance v0, Lcom/loopj/android/image/WebImage;

    move-object v1, p1

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/loopj/android/image/WebImage;-><init>(Ljava/lang/String;ZIII)V

    invoke-virtual {p0, v0}, Lcom/loopj/android/image/SmartImageView;->setImage(Lcom/loopj/android/image/SmartImage;)V

    goto :goto_28
.end method

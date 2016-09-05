.class synthetic Lcom/handmark/pulltorefresh/library/internal/LoadingLayout$1;
.super Ljava/lang/Object;
.source "LoadingLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 89
    invoke-static {}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->values()[Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout$1;->b:[I

    :try_start_9
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout$1;->b:[I

    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->c:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_45

    :goto_14
    :try_start_14
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout$1;->b:[I

    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->b:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_43

    .line 71
    :goto_1f
    invoke-static {}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;->values()[Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout$1;->a:[I

    :try_start_28
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout$1;->a:[I

    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;->b:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_41

    :goto_33
    :try_start_33
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout$1;->a:[I

    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;->a:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3f

    :goto_3e
    return-void

    :catch_3f
    move-exception v0

    goto :goto_3e

    :catch_41
    move-exception v0

    goto :goto_33

    .line 89
    :catch_43
    move-exception v0

    goto :goto_1f

    :catch_45
    move-exception v0

    goto :goto_14
.end method

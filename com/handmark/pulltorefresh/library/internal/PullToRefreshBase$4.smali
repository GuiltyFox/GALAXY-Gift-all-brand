.class synthetic Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$4;
.super Ljava/lang/Object;
.source "PullToRefreshBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$handmark$pulltorefresh$library$internal$PullToRefreshBase$AnimationStyle:[I

.field static final synthetic $SwitchMap$com$handmark$pulltorefresh$library$internal$PullToRefreshBase$Mode:[I

.field static final synthetic $SwitchMap$com$handmark$pulltorefresh$library$internal$PullToRefreshBase$Orientation:[I

.field static final synthetic $SwitchMap$com$handmark$pulltorefresh$library$internal$PullToRefreshBase$State:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 1322
    invoke-static {}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;->values()[Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$4;->$SwitchMap$com$handmark$pulltorefresh$library$internal$PullToRefreshBase$AnimationStyle:[I

    :try_start_9
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$4;->$SwitchMap$com$handmark$pulltorefresh$library$internal$PullToRefreshBase$AnimationStyle:[I

    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;->ROTATE:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_dd

    :goto_14
    :try_start_14
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$4;->$SwitchMap$com$handmark$pulltorefresh$library$internal$PullToRefreshBase$AnimationStyle:[I

    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;->FLIP:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_da

    .line 703
    :goto_1f
    invoke-static {}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->values()[Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$4;->$SwitchMap$com$handmark$pulltorefresh$library$internal$PullToRefreshBase$Mode:[I

    :try_start_28
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$4;->$SwitchMap$com$handmark$pulltorefresh$library$internal$PullToRefreshBase$Mode:[I

    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_d7

    :goto_33
    :try_start_33
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$4;->$SwitchMap$com$handmark$pulltorefresh$library$internal$PullToRefreshBase$Mode:[I

    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_d4

    :goto_3e
    :try_start_3e
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$4;->$SwitchMap$com$handmark$pulltorefresh$library$internal$PullToRefreshBase$Mode:[I

    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->MANUAL_REFRESH_ONLY:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_d1

    :goto_49
    :try_start_49
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$4;->$SwitchMap$com$handmark$pulltorefresh$library$internal$PullToRefreshBase$Mode:[I

    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_cf

    .line 540
    :goto_54
    invoke-static {}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;->values()[Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$4;->$SwitchMap$com$handmark$pulltorefresh$library$internal$PullToRefreshBase$State:[I

    :try_start_5d
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$4;->$SwitchMap$com$handmark$pulltorefresh$library$internal$PullToRefreshBase$State:[I

    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;->RESET:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_68
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5d .. :try_end_68} :catch_cd

    :goto_68
    :try_start_68
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$4;->$SwitchMap$com$handmark$pulltorefresh$library$internal$PullToRefreshBase$State:[I

    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;->PULL_TO_REFRESH:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_73
    .catch Ljava/lang/NoSuchFieldError; {:try_start_68 .. :try_end_73} :catch_cb

    :goto_73
    :try_start_73
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$4;->$SwitchMap$com$handmark$pulltorefresh$library$internal$PullToRefreshBase$State:[I

    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;->RELEASE_TO_REFRESH:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_7e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_73 .. :try_end_7e} :catch_c9

    :goto_7e
    :try_start_7e
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$4;->$SwitchMap$com$handmark$pulltorefresh$library$internal$PullToRefreshBase$State:[I

    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;->REFRESHING:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_89
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7e .. :try_end_89} :catch_c7

    :goto_89
    :try_start_89
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$4;->$SwitchMap$com$handmark$pulltorefresh$library$internal$PullToRefreshBase$State:[I

    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;->MANUAL_REFRESHING:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_94
    .catch Ljava/lang/NoSuchFieldError; {:try_start_89 .. :try_end_94} :catch_c5

    :goto_94
    :try_start_94
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$4;->$SwitchMap$com$handmark$pulltorefresh$library$internal$PullToRefreshBase$State:[I

    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;->OVERSCROLLING:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_9f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_94 .. :try_end_9f} :catch_c3

    .line 251
    :goto_9f
    invoke-static {}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;->values()[Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$4;->$SwitchMap$com$handmark$pulltorefresh$library$internal$PullToRefreshBase$Orientation:[I

    :try_start_a8
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$4;->$SwitchMap$com$handmark$pulltorefresh$library$internal$PullToRefreshBase$Orientation:[I

    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;->HORIZONTAL:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_b3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a8 .. :try_end_b3} :catch_c1

    :goto_b3
    :try_start_b3
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$4;->$SwitchMap$com$handmark$pulltorefresh$library$internal$PullToRefreshBase$Orientation:[I

    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;->VERTICAL:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_be
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b3 .. :try_end_be} :catch_bf

    :goto_be
    return-void

    :catch_bf
    move-exception v0

    goto :goto_be

    :catch_c1
    move-exception v0

    goto :goto_b3

    .line 540
    :catch_c3
    move-exception v0

    goto :goto_9f

    :catch_c5
    move-exception v0

    goto :goto_94

    :catch_c7
    move-exception v0

    goto :goto_89

    :catch_c9
    move-exception v0

    goto :goto_7e

    :catch_cb
    move-exception v0

    goto :goto_73

    :catch_cd
    move-exception v0

    goto :goto_68

    .line 703
    :catch_cf
    move-exception v0

    goto :goto_54

    :catch_d1
    move-exception v0

    goto/16 :goto_49

    :catch_d4
    move-exception v0

    goto/16 :goto_3e

    :catch_d7
    move-exception v0

    goto/16 :goto_33

    .line 1322
    :catch_da
    move-exception v0

    goto/16 :goto_1f

    :catch_dd
    move-exception v0

    goto/16 :goto_14
.end method

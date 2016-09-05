.class public Lcom/rey/material/app/ThemeManager;
.super Ljava/lang/Object;
.source "ThemeManager.java"


# static fields
.field private static volatile a:Lcom/rey/material/app/ThemeManager;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[I>;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Lcom/rey/material/app/ThemeManager$EventDispatcher;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/rey/material/app/ThemeManager;->c:Landroid/util/SparseArray;

    .line 264
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/util/AttributeSet;II)I
    .registers 7

    .prologue
    .line 46
    sget-object v0, Lcom/rey/material/R$styleable;->ThemableView:[I

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 47
    sget v1, Lcom/rey/material/R$styleable;->ThemableView_v_styleId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 48
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 50
    return v1
.end method

.method public static a()Lcom/rey/material/app/ThemeManager;
    .registers 2

    .prologue
    .line 69
    sget-object v0, Lcom/rey/material/app/ThemeManager;->a:Lcom/rey/material/app/ThemeManager;

    if-nez v0, :cond_13

    .line 70
    const-class v1, Lcom/rey/material/app/ThemeManager;

    monitor-enter v1

    .line 71
    :try_start_7
    sget-object v0, Lcom/rey/material/app/ThemeManager;->a:Lcom/rey/material/app/ThemeManager;

    if-nez v0, :cond_12

    .line 72
    new-instance v0, Lcom/rey/material/app/ThemeManager;

    invoke-direct {v0}, Lcom/rey/material/app/ThemeManager;-><init>()V

    sput-object v0, Lcom/rey/material/app/ThemeManager;->a:Lcom/rey/material/app/ThemeManager;

    .line 73
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 76
    :cond_13
    sget-object v0, Lcom/rey/material/app/ThemeManager;->a:Lcom/rey/material/app/ThemeManager;

    return-object v0

    .line 73
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private a(Landroid/content/Context;I)[I
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 93
    if-nez p1, :cond_5

    .line 94
    const/4 v0, 0x0

    .line 102
    :goto_4
    return-object v0

    .line 96
    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 97
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    new-array v2, v0, [I

    move v0, v1

    .line 98
    :goto_14
    array-length v4, v2

    if-ge v0, v4, :cond_20

    .line 99
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    aput v4, v2, v0

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 100
    :cond_20
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    move-object v0, v2

    .line 102
    goto :goto_4
.end method

.method private b(I)[I
    .registers 4

    .prologue
    .line 106
    iget-object v0, p0, Lcom/rey/material/app/ThemeManager;->c:Landroid/util/SparseArray;

    if-nez v0, :cond_6

    .line 107
    const/4 v0, 0x0

    .line 115
    :cond_5
    :goto_5
    return-object v0

    .line 109
    :cond_6
    iget-object v0, p0, Lcom/rey/material/app/ThemeManager;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 110
    if-nez v0, :cond_5

    .line 111
    iget-object v0, p0, Lcom/rey/material/app/ThemeManager;->b:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/rey/material/app/ThemeManager;->a(Landroid/content/Context;I)[I

    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/rey/material/app/ThemeManager;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_5
.end method


# virtual methods
.method public a(I)I
    .registers 3

    .prologue
    .line 175
    iget v0, p0, Lcom/rey/material/app/ThemeManager;->d:I

    invoke-virtual {p0, p1, v0}, Lcom/rey/material/app/ThemeManager;->a(II)I

    move-result v0

    return v0
.end method

.method public a(II)I
    .registers 4

    .prologue
    .line 185
    invoke-direct {p0, p1}, Lcom/rey/material/app/ThemeManager;->b(I)[I

    move-result-object v0

    .line 186
    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    aget v0, v0, p2

    goto :goto_7
.end method

.method public a(Lcom/rey/material/app/ThemeManager$OnThemeChangedListener;)V
    .registers 3

    .prologue
    .line 194
    iget-object v0, p0, Lcom/rey/material/app/ThemeManager;->e:Lcom/rey/material/app/ThemeManager$EventDispatcher;

    if-eqz v0, :cond_9

    .line 195
    iget-object v0, p0, Lcom/rey/material/app/ThemeManager;->e:Lcom/rey/material/app/ThemeManager$EventDispatcher;

    invoke-interface {v0, p1}, Lcom/rey/material/app/ThemeManager$EventDispatcher;->a(Lcom/rey/material/app/ThemeManager$OnThemeChangedListener;)V

    .line 196
    :cond_9
    return-void
.end method

.method public b(Lcom/rey/material/app/ThemeManager$OnThemeChangedListener;)V
    .registers 3

    .prologue
    .line 203
    iget-object v0, p0, Lcom/rey/material/app/ThemeManager;->e:Lcom/rey/material/app/ThemeManager$EventDispatcher;

    if-eqz v0, :cond_9

    .line 204
    iget-object v0, p0, Lcom/rey/material/app/ThemeManager;->e:Lcom/rey/material/app/ThemeManager$EventDispatcher;

    invoke-interface {v0, p1}, Lcom/rey/material/app/ThemeManager$EventDispatcher;->b(Lcom/rey/material/app/ThemeManager$OnThemeChangedListener;)V

    .line 205
    :cond_9
    return-void
.end method

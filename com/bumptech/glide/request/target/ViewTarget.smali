.class public abstract Lcom/bumptech/glide/request/target/ViewTarget;
.super Lcom/bumptech/glide/request/target/BaseTarget;
.source "ViewTarget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        "Z:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/request/target/BaseTarget",
        "<TZ;>;"
    }
.end annotation


# static fields
.field private static b:Z

.field private static c:Ljava/lang/Integer;


# instance fields
.field protected final a:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final d:Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput-boolean v0, Lcom/bumptech/glide/request/target/ViewTarget;->b:Z

    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/bumptech/glide/request/target/ViewTarget;->c:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/BaseTarget;-><init>()V

    .line 75
    if-nez p1, :cond_e

    .line 76
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "View must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_e
    iput-object p1, p0, Lcom/bumptech/glide/request/target/ViewTarget;->a:Landroid/view/View;

    .line 79
    new-instance v0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget;->d:Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;

    .line 80
    return-void
.end method

.method private a(Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 140
    sget-object v0, Lcom/bumptech/glide/request/target/ViewTarget;->c:Ljava/lang/Integer;

    if-nez v0, :cond_d

    .line 141
    const/4 v0, 0x1

    sput-boolean v0, Lcom/bumptech/glide/request/target/ViewTarget;->b:Z

    .line 142
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 146
    :goto_c
    return-void

    .line 144
    :cond_d
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget;->a:Landroid/view/View;

    sget-object v1, Lcom/bumptech/glide/request/target/ViewTarget;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_c
.end method

.method private g()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 149
    sget-object v0, Lcom/bumptech/glide/request/target/ViewTarget;->c:Ljava/lang/Integer;

    if-nez v0, :cond_b

    .line 150
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 152
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget;->a:Landroid/view/View;

    sget-object v1, Lcom/bumptech/glide/request/target/ViewTarget;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_a
.end method


# virtual methods
.method public a()Landroid/view/View;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget;->a:Landroid/view/View;

    return-object v0
.end method

.method public a(Lcom/bumptech/glide/request/Request;)V
    .registers 2

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/target/ViewTarget;->a(Ljava/lang/Object;)V

    .line 111
    return-void
.end method

.method public a(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V
    .registers 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget;->d:Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->a(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V

    .line 101
    return-void
.end method

.method public c()Lcom/bumptech/glide/request/Request;
    .registers 3

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/ViewTarget;->g()Ljava/lang/Object;

    move-result-object v0

    .line 128
    const/4 v1, 0x0

    .line 129
    if-eqz v0, :cond_17

    .line 130
    instance-of v1, v0, Lcom/bumptech/glide/request/Request;

    if-eqz v1, :cond_e

    .line 131
    check-cast v0, Lcom/bumptech/glide/request/Request;

    .line 136
    :goto_d
    return-object v0

    .line 133
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "You must not call setTag() on a view Glide is targeting"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    move-object v0, v1

    goto :goto_d
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Target for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/request/target/ViewTarget;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

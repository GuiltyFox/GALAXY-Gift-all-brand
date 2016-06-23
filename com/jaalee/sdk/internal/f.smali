.class public final Lcom/jaalee/sdk/internal/f;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/jaalee/sdk/internal/g;

.field private c:Lcom/jaalee/sdk/internal/g;

.field private d:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/jaalee/sdk/internal/g;

    invoke-direct {v0, v1}, Lcom/jaalee/sdk/internal/g;-><init>(B)V

    iput-object v0, p0, Lcom/jaalee/sdk/internal/f;->b:Lcom/jaalee/sdk/internal/g;

    iget-object v0, p0, Lcom/jaalee/sdk/internal/f;->b:Lcom/jaalee/sdk/internal/g;

    iput-object v0, p0, Lcom/jaalee/sdk/internal/f;->c:Lcom/jaalee/sdk/internal/g;

    iput-boolean v1, p0, Lcom/jaalee/sdk/internal/f;->d:Z

    invoke-static {p1}, Lcom/jaalee/sdk/internal/e;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/jaalee/sdk/internal/f;->a:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/jaalee/sdk/internal/f;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/Object;)Lcom/jaalee/sdk/internal/f;
    .registers 5

    new-instance v1, Lcom/jaalee/sdk/internal/g;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/jaalee/sdk/internal/g;-><init>(B)V

    iget-object v0, p0, Lcom/jaalee/sdk/internal/f;->c:Lcom/jaalee/sdk/internal/g;

    iput-object v1, v0, Lcom/jaalee/sdk/internal/g;->c:Lcom/jaalee/sdk/internal/g;

    iput-object v1, p0, Lcom/jaalee/sdk/internal/f;->c:Lcom/jaalee/sdk/internal/g;

    iput-object p2, v1, Lcom/jaalee/sdk/internal/g;->b:Ljava/lang/Object;

    invoke-static {p1}, Lcom/jaalee/sdk/internal/e;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/jaalee/sdk/internal/g;->a:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)Lcom/jaalee/sdk/internal/f;
    .registers 4

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/jaalee/sdk/internal/f;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/jaalee/sdk/internal/f;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;J)Lcom/jaalee/sdk/internal/f;
    .registers 6

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/jaalee/sdk/internal/f;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/jaalee/sdk/internal/f;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)Lcom/jaalee/sdk/internal/f;
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/jaalee/sdk/internal/f;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/jaalee/sdk/internal/f;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 6

    const-string/jumbo v1, ""

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v2, p0, Lcom/jaalee/sdk/internal/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x7b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/jaalee/sdk/internal/f;->b:Lcom/jaalee/sdk/internal/g;

    iget-object v0, v0, Lcom/jaalee/sdk/internal/g;->c:Lcom/jaalee/sdk/internal/g;

    :goto_1a
    if-nez v0, :cond_27

    const/16 v0, 0x7d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_27
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", "

    iget-object v3, v0, Lcom/jaalee/sdk/internal/g;->a:Ljava/lang/String;

    if-eqz v3, :cond_3c

    iget-object v3, v0, Lcom/jaalee/sdk/internal/g;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3c
    iget-object v3, v0, Lcom/jaalee/sdk/internal/g;->b:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/jaalee/sdk/internal/g;->c:Lcom/jaalee/sdk/internal/g;

    goto :goto_1a
.end method

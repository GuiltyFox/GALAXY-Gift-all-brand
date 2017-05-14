.class public Lcom/koushikdutta/async/http/body/Part;
.super Ljava/lang/Object;
.source "Part.java"


# static fields
.field static final synthetic d:Z


# instance fields
.field private a:J

.field b:Lcom/koushikdutta/async/http/Headers;

.field c:Lcom/koushikdutta/async/http/Multimap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const-class v0, Lcom/koushikdutta/async/http/body/Part;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/koushikdutta/async/http/body/Part;->d:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Lcom/koushikdutta/async/http/Headers;)V
    .registers 4

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/koushikdutta/async/http/body/Part;->a:J

    .line 19
    iput-object p1, p0, Lcom/koushikdutta/async/http/body/Part;->b:Lcom/koushikdutta/async/http/Headers;

    .line 20
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/Part;->b:Lcom/koushikdutta/async/http/Headers;

    const-string/jumbo v1, "Content-Disposition"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/koushikdutta/async/http/Multimap;->b(Ljava/lang/String;)Lcom/koushikdutta/async/http/Multimap;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/http/body/Part;->c:Lcom/koushikdutta/async/http/Multimap;

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/koushikdutta/async/http/body/Part;->a:J

    .line 29
    iput-wide p2, p0, Lcom/koushikdutta/async/http/body/Part;->a:J

    .line 30
    new-instance v0, Lcom/koushikdutta/async/http/Headers;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/Headers;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/body/Part;->b:Lcom/koushikdutta/async/http/Headers;

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "form-data; name=\"%s\""

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p1, v2, v6

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    if-eqz p4, :cond_4e

    .line 33
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    .line 34
    const-string/jumbo v3, "; %s=\"%s\""

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_28

    .line 37
    :cond_4e
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/Part;->b:Lcom/koushikdutta/async/http/Headers;

    const-string/jumbo v2, "Content-Disposition"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/koushikdutta/async/http/Headers;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    .line 38
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/Part;->b:Lcom/koushikdutta/async/http/Headers;

    const-string/jumbo v1, "Content-Disposition"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/koushikdutta/async/http/Multimap;->b(Ljava/lang/String;)Lcom/koushikdutta/async/http/Multimap;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/http/body/Part;->c:Lcom/koushikdutta/async/http/Multimap;

    .line 39
    return-void
.end method


# virtual methods
.method public a(Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .registers 4

    .prologue
    .line 69
    sget-boolean v0, Lcom/koushikdutta/async/http/body/Part;->d:Z

    if-nez v0, :cond_a

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 70
    :cond_a
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 50
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/Part;->b:Lcom/koushikdutta/async/http/Headers;

    const-string/jumbo v1, "Content-Type"

    invoke-virtual {v0, v1, p1}, Lcom/koushikdutta/async/http/Headers;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    .line 51
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 3

    .prologue
    .line 24
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/Part;->c:Lcom/koushikdutta/async/http/Multimap;

    const-string/jumbo v1, "name"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/Multimap;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/koushikdutta/async/http/Headers;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/Part;->b:Lcom/koushikdutta/async/http/Headers;

    return-object v0
.end method

.method public d()Z
    .registers 3

    .prologue
    .line 61
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/Part;->c:Lcom/koushikdutta/async/http/Multimap;

    const-string/jumbo v1, "filename"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/Multimap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public e()J
    .registers 3

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/koushikdutta/async/http/body/Part;->a:J

    return-wide v0
.end method

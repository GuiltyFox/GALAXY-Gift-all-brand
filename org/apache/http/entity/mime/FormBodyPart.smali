.class public Lorg/apache/http/entity/mime/FormBodyPart;
.super Ljava/lang/Object;
.source "FormBodyPart.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lorg/apache/http/entity/mime/Header;

.field private final c:Lorg/apache/http/entity/mime/content/ContentBody;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V
    .registers 4

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-string/jumbo v0, "Name"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 52
    const-string/jumbo v0, "Body"

    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    iput-object p1, p0, Lorg/apache/http/entity/mime/FormBodyPart;->a:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lorg/apache/http/entity/mime/FormBodyPart;->c:Lorg/apache/http/entity/mime/content/ContentBody;

    .line 55
    new-instance v0, Lorg/apache/http/entity/mime/Header;

    invoke-direct {v0}, Lorg/apache/http/entity/mime/Header;-><init>()V

    iput-object v0, p0, Lorg/apache/http/entity/mime/FormBodyPart;->b:Lorg/apache/http/entity/mime/Header;

    .line 57
    invoke-virtual {p0, p2}, Lorg/apache/http/entity/mime/FormBodyPart;->a(Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 58
    invoke-virtual {p0, p2}, Lorg/apache/http/entity/mime/FormBodyPart;->b(Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 59
    invoke-virtual {p0, p2}, Lorg/apache/http/entity/mime/FormBodyPart;->c(Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 60
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/http/entity/mime/FormBodyPart;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 75
    const-string/jumbo v0, "Field name"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lorg/apache/http/entity/mime/FormBodyPart;->b:Lorg/apache/http/entity/mime/Header;

    new-instance v1, Lorg/apache/http/entity/mime/MinimalField;

    invoke-direct {v1, p1, p2}, Lorg/apache/http/entity/mime/MinimalField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/entity/mime/Header;->a(Lorg/apache/http/entity/mime/MinimalField;)V

    .line 77
    return-void
.end method

.method protected a(Lorg/apache/http/entity/mime/content/ContentBody;)V
    .registers 4

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    const-string/jumbo v1, "form-data; name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {p0}, Lorg/apache/http/entity/mime/FormBodyPart;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-interface {p1}, Lorg/apache/http/entity/mime/content/ContentBody;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_31

    .line 85
    const-string/jumbo v1, "; filename=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-interface {p1}, Lorg/apache/http/entity/mime/content/ContentBody;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    :cond_31
    const-string/jumbo v1, "Content-Disposition"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/apache/http/entity/mime/FormBodyPart;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public b()Lorg/apache/http/entity/mime/content/ContentBody;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lorg/apache/http/entity/mime/FormBodyPart;->c:Lorg/apache/http/entity/mime/content/ContentBody;

    return-object v0
.end method

.method protected b(Lorg/apache/http/entity/mime/content/ContentBody;)V
    .registers 4

    .prologue
    .line 94
    instance-of v0, p1, Lorg/apache/http/entity/mime/content/AbstractContentBody;

    if-eqz v0, :cond_18

    move-object v0, p1

    .line 95
    check-cast v0, Lorg/apache/http/entity/mime/content/AbstractContentBody;

    invoke-virtual {v0}, Lorg/apache/http/entity/mime/content/AbstractContentBody;->a()Lorg/apache/http/entity/ContentType;

    move-result-object v0

    .line 99
    :goto_b
    if-eqz v0, :cond_1a

    .line 100
    const-string/jumbo v1, "Content-Type"

    invoke-virtual {v0}, Lorg/apache/http/entity/ContentType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/apache/http/entity/mime/FormBodyPart;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :goto_17
    return-void

    .line 97
    :cond_18
    const/4 v0, 0x0

    goto :goto_b

    .line 102
    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    invoke-interface {p1}, Lorg/apache/http/entity/mime/content/ContentBody;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-interface {p1}, Lorg/apache/http/entity/mime/content/ContentBody;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_39

    .line 105
    const-string/jumbo v1, "; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-interface {p1}, Lorg/apache/http/entity/mime/content/ContentBody;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    :cond_39
    const-string/jumbo v1, "Content-Type"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/apache/http/entity/mime/FormBodyPart;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17
.end method

.method public c()Lorg/apache/http/entity/mime/Header;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lorg/apache/http/entity/mime/FormBodyPart;->b:Lorg/apache/http/entity/mime/Header;

    return-object v0
.end method

.method protected c(Lorg/apache/http/entity/mime/content/ContentBody;)V
    .registers 4

    .prologue
    .line 113
    const-string/jumbo v0, "Content-Transfer-Encoding"

    invoke-interface {p1}, Lorg/apache/http/entity/mime/content/ContentBody;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/entity/mime/FormBodyPart;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void
.end method

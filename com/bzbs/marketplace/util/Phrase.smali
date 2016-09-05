.class public final Lcom/bzbs/marketplace/util/Phrase;
.super Ljava/lang/Object;
.source "Phrase.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/bzbs/marketplace/util/Phrase;->a:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/bzbs/marketplace/util/Phrase;
    .registers 2

    .prologue
    .line 15
    new-instance v0, Lcom/bzbs/marketplace/util/Phrase;

    invoke-direct {v0, p0}, Lcom/bzbs/marketplace/util/Phrase;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/bzbs/marketplace/util/Phrase;
    .registers 5

    .prologue
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/bzbs/marketplace/util/Phrase;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/marketplace/util/Phrase;->a:Ljava/lang/String;

    .line 21
    return-object p0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/bzbs/marketplace/util/Phrase;->a:Ljava/lang/String;

    return-object v0
.end method

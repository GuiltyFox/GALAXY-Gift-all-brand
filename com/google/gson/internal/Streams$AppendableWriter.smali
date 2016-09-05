.class final Lcom/google/gson/internal/Streams$AppendableWriter;
.super Ljava/io/Writer;
.source "Streams.java"


# instance fields
.field private final a:Ljava/lang/Appendable;

.field private final b:Lcom/google/gson/internal/Streams$AppendableWriter$CurrentWrite;


# direct methods
.method private constructor <init>(Ljava/lang/Appendable;)V
    .registers 3

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 86
    new-instance v0, Lcom/google/gson/internal/Streams$AppendableWriter$CurrentWrite;

    invoke-direct {v0}, Lcom/google/gson/internal/Streams$AppendableWriter$CurrentWrite;-><init>()V

    iput-object v0, p0, Lcom/google/gson/internal/Streams$AppendableWriter;->b:Lcom/google/gson/internal/Streams$AppendableWriter$CurrentWrite;

    .line 89
    iput-object p1, p0, Lcom/google/gson/internal/Streams$AppendableWriter;->a:Ljava/lang/Appendable;

    .line 90
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Appendable;Lcom/google/gson/internal/Streams$1;)V
    .registers 3

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/google/gson/internal/Streams$AppendableWriter;-><init>(Ljava/lang/Appendable;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    .prologue
    .line 102
    return-void
.end method

.method public flush()V
    .registers 1

    .prologue
    .line 101
    return-void
.end method

.method public write(I)V
    .registers 4

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/gson/internal/Streams$AppendableWriter;->a:Ljava/lang/Appendable;

    int-to-char v1, p1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 99
    return-void
.end method

.method public write([CII)V
    .registers 7

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/gson/internal/Streams$AppendableWriter;->b:Lcom/google/gson/internal/Streams$AppendableWriter$CurrentWrite;

    iput-object p1, v0, Lcom/google/gson/internal/Streams$AppendableWriter$CurrentWrite;->a:[C

    .line 94
    iget-object v0, p0, Lcom/google/gson/internal/Streams$AppendableWriter;->a:Ljava/lang/Appendable;

    iget-object v1, p0, Lcom/google/gson/internal/Streams$AppendableWriter;->b:Lcom/google/gson/internal/Streams$AppendableWriter$CurrentWrite;

    add-int v2, p2, p3

    invoke-interface {v0, v1, p2, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    .line 95
    return-void
.end method

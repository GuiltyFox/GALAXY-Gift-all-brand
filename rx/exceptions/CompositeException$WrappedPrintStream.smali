.class Lrx/exceptions/CompositeException$WrappedPrintStream;
.super Lrx/exceptions/CompositeException$PrintStreamOrWriter;
.source "CompositeException.java"


# instance fields
.field private final a:Ljava/io/PrintStream;


# direct methods
.method constructor <init>(Ljava/io/PrintStream;)V
    .registers 3

    .prologue
    .line 207
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lrx/exceptions/CompositeException$PrintStreamOrWriter;-><init>(Lrx/exceptions/CompositeException$1;)V

    .line 208
    iput-object p1, p0, Lrx/exceptions/CompositeException$WrappedPrintStream;->a:Ljava/io/PrintStream;

    .line 209
    return-void
.end method


# virtual methods
.method a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 213
    iget-object v0, p0, Lrx/exceptions/CompositeException$WrappedPrintStream;->a:Ljava/io/PrintStream;

    return-object v0
.end method

.method a(Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 218
    iget-object v0, p0, Lrx/exceptions/CompositeException$WrappedPrintStream;->a:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 219
    return-void
.end method

.class Lrx/exceptions/CompositeException$WrappedPrintWriter;
.super Lrx/exceptions/CompositeException$PrintStreamOrWriter;
.source "CompositeException.java"


# instance fields
.field private final a:Ljava/io/PrintWriter;


# direct methods
.method constructor <init>(Ljava/io/PrintWriter;)V
    .registers 3

    .prologue
    .line 225
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lrx/exceptions/CompositeException$PrintStreamOrWriter;-><init>(Lrx/exceptions/CompositeException$1;)V

    .line 226
    iput-object p1, p0, Lrx/exceptions/CompositeException$WrappedPrintWriter;->a:Ljava/io/PrintWriter;

    .line 227
    return-void
.end method


# virtual methods
.method a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 231
    iget-object v0, p0, Lrx/exceptions/CompositeException$WrappedPrintWriter;->a:Ljava/io/PrintWriter;

    return-object v0
.end method

.method a(Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 236
    iget-object v0, p0, Lrx/exceptions/CompositeException$WrappedPrintWriter;->a:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 237
    return-void
.end method

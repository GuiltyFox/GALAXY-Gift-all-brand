.class final Lrx/exceptions/CompositeException$CompositeExceptionCausalChain;
.super Ljava/lang/RuntimeException;
.source "CompositeException.java"


# static fields
.field static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 242
    const-string/jumbo v0, "Chain of Causes for CompositeException In Order Received =>"

    sput-object v0, Lrx/exceptions/CompositeException$CompositeExceptionCausalChain;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 240
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 246
    sget-object v0, Lrx/exceptions/CompositeException$CompositeExceptionCausalChain;->a:Ljava/lang/String;

    return-object v0
.end method

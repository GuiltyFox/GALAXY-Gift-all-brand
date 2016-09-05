.class public abstract Lokhttp3/internal/framed/FramedConnection$Listener;
.super Ljava/lang/Object;
.source "FramedConnection.java"


# static fields
.field public static final a:Lokhttp3/internal/framed/FramedConnection$Listener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 922
    new-instance v0, Lokhttp3/internal/framed/FramedConnection$Listener$1;

    invoke-direct {v0}, Lokhttp3/internal/framed/FramedConnection$Listener$1;-><init>()V

    sput-object v0, Lokhttp3/internal/framed/FramedConnection$Listener;->a:Lokhttp3/internal/framed/FramedConnection$Listener;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 921
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lokhttp3/internal/framed/FramedConnection;)V
    .registers 2

    .prologue
    .line 944
    return-void
.end method

.method public abstract a(Lokhttp3/internal/framed/FramedStream;)V
.end method

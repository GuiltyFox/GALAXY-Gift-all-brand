.class public interface abstract Lokhttp3/Authenticator;
.super Ljava/lang/Object;
.source "Authenticator.java"


# static fields
.field public static final a:Lokhttp3/Authenticator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 51
    new-instance v0, Lokhttp3/Authenticator$1;

    invoke-direct {v0}, Lokhttp3/Authenticator$1;-><init>()V

    sput-object v0, Lokhttp3/Authenticator;->a:Lokhttp3/Authenticator;

    return-void
.end method


# virtual methods
.method public abstract a(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;
.end method
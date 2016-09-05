.class public interface abstract Lokhttp3/internal/io/FileSystem;
.super Ljava/lang/Object;
.source "FileSystem.java"


# static fields
.field public static final a:Lokhttp3/internal/io/FileSystem;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    new-instance v0, Lokhttp3/internal/io/FileSystem$1;

    invoke-direct {v0}, Lokhttp3/internal/io/FileSystem$1;-><init>()V

    sput-object v0, Lokhttp3/internal/io/FileSystem;->a:Lokhttp3/internal/io/FileSystem;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/io/File;)V
.end method

.method public abstract a(Ljava/io/File;Ljava/io/File;)V
.end method

.method public abstract b(Ljava/io/File;)Z
.end method

.method public abstract c(Ljava/io/File;)J
.end method

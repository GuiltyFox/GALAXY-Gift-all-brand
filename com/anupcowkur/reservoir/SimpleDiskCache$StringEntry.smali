.class Lcom/anupcowkur/reservoir/SimpleDiskCache$StringEntry;
.super Ljava/lang/Object;
.source "SimpleDiskCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anupcowkur/reservoir/SimpleDiskCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StringEntry"
.end annotation


# instance fields
.field private final string:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput-object p1, p0, Lcom/anupcowkur/reservoir/SimpleDiskCache$StringEntry;->string:Ljava/lang/String;

    .line 216
    return-void
.end method


# virtual methods
.method getString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/anupcowkur/reservoir/SimpleDiskCache$StringEntry;->string:Ljava/lang/String;

    return-object v0
.end method

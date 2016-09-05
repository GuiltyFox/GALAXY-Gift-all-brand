.class Lcom/anupcowkur/reservoir/SimpleDiskCache$StringEntry;
.super Ljava/lang/Object;
.source "SimpleDiskCache.java"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput-object p1, p0, Lcom/anupcowkur/reservoir/SimpleDiskCache$StringEntry;->a:Ljava/lang/String;

    .line 216
    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/anupcowkur/reservoir/SimpleDiskCache$StringEntry;->a:Ljava/lang/String;

    return-object v0
.end method

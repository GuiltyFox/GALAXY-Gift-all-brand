.class final Lcom/jaalee/sdk/service/n;
.super Ljava/lang/Object;


# static fields
.field private static final d:Ljava/util/Comparator;


# instance fields
.field final a:Lcom/jaalee/sdk/Region;

.field final b:Landroid/os/Messenger;

.field final c:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/jaalee/sdk/service/o;

    invoke-direct {v0}, Lcom/jaalee/sdk/service/o;-><init>()V

    sput-object v0, Lcom/jaalee/sdk/service/n;->d:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(Lcom/jaalee/sdk/Region;Landroid/os/Messenger;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jaalee/sdk/service/n;->a:Lcom/jaalee/sdk/Region;

    iput-object p2, p0, Lcom/jaalee/sdk/service/n;->b:Landroid/os/Messenger;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/jaalee/sdk/service/n;->c:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Collection;
    .registers 3

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jaalee/sdk/service/n;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v1, Lcom/jaalee/sdk/service/n;->d:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

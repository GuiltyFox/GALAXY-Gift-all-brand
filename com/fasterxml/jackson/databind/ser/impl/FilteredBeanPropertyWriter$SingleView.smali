.class final Lcom/fasterxml/jackson/databind/ser/impl/FilteredBeanPropertyWriter$SingleView;
.super Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
.source "FilteredBeanPropertyWriter.java"


# instance fields
.field protected final _delegate:Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

.field protected final _view:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;-><init>(Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;)V

    .line 39
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/impl/FilteredBeanPropertyWriter$SingleView;->_delegate:Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 40
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/impl/FilteredBeanPropertyWriter$SingleView;->_view:Ljava/lang/Class;

    .line 41
    return-void
.end method


# virtual methods
.method public assignNullSerializer(Lcom/fasterxml/jackson/databind/JsonSerializer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/FilteredBeanPropertyWriter$SingleView;->_delegate:Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->assignNullSerializer(Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    .line 56
    return-void
.end method

.method public assignSerializer(Lcom/fasterxml/jackson/databind/JsonSerializer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/FilteredBeanPropertyWriter$SingleView;->_delegate:Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->assignSerializer(Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    .line 51
    return-void
.end method

.method public bridge synthetic rename(Lcom/fasterxml/jackson/databind/util/NameTransformer;)Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    .registers 3

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/FilteredBeanPropertyWriter$SingleView;->rename(Lcom/fasterxml/jackson/databind/util/NameTransformer;)Lcom/fasterxml/jackson/databind/ser/impl/FilteredBeanPropertyWriter$SingleView;

    move-result-object v0

    return-object v0
.end method

.method public rename(Lcom/fasterxml/jackson/databind/util/NameTransformer;)Lcom/fasterxml/jackson/databind/ser/impl/FilteredBeanPropertyWriter$SingleView;
    .registers 5

    .prologue
    .line 45
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/impl/FilteredBeanPropertyWriter$SingleView;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/impl/FilteredBeanPropertyWriter$SingleView;->_delegate:Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->rename(Lcom/fasterxml/jackson/databind/util/NameTransformer;)Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    move-result-object v1

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/impl/FilteredBeanPropertyWriter$SingleView;->_view:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/databind/ser/impl/FilteredBeanPropertyWriter$SingleView;-><init>(Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;Ljava/lang/Class;)V

    return-object v0
.end method

.method public serializeAsElement(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .registers 6

    .prologue
    .line 74
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getActiveView()Ljava/lang/Class;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/impl/FilteredBeanPropertyWriter$SingleView;->_view:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 76
    :cond_e
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/FilteredBeanPropertyWriter$SingleView;->_delegate:Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->serializeAsElement(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 80
    :goto_13
    return-void

    .line 78
    :cond_14
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/FilteredBeanPropertyWriter$SingleView;->_delegate:Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->serializeAsPlaceholder(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    goto :goto_13
.end method

.method public serializeAsField(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .registers 6

    .prologue
    .line 62
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getActiveView()Ljava/lang/Class;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/impl/FilteredBeanPropertyWriter$SingleView;->_view:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 64
    :cond_e
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/FilteredBeanPropertyWriter$SingleView;->_delegate:Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->serializeAsField(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 68
    :goto_13
    return-void

    .line 66
    :cond_14
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/FilteredBeanPropertyWriter$SingleView;->_delegate:Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->serializeAsOmittedField(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    goto :goto_13
.end method

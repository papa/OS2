
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000a117          	auipc	sp,0xa
    80000004:	53813103          	ld	sp,1336(sp) # 8000a538 <_GLOBAL_OFFSET_TABLE_+0x40>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	1cd050ef          	jal	ra,800059e8 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv14supervisorTrapEv>:
.align 4
.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv, @function
_ZN5Riscv14supervisorTrapEv:

    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    csrw sscratch, sp
    80001004:	14011073          	csrw	sscratch,sp
    sd x0, 0(sp)
    80001008:	00013023          	sd	zero,0(sp)
    sd x1, 8(sp)
    8000100c:	00113423          	sd	ra,8(sp)
    sd x2, 16(sp)
    80001010:	00213823          	sd	sp,16(sp)
    sd x3, 24(sp)
    80001014:	00313c23          	sd	gp,24(sp)
    sd x4, 32(sp)
    80001018:	02413023          	sd	tp,32(sp)
    sd x5, 40(sp)
    8000101c:	02513423          	sd	t0,40(sp)
    sd x6, 48(sp)
    80001020:	02613823          	sd	t1,48(sp)
    sd x7, 56(sp)
    80001024:	02713c23          	sd	t2,56(sp)
    sd x8, 64(sp)
    80001028:	04813023          	sd	s0,64(sp)
    sd x9, 72(sp)
    8000102c:	04913423          	sd	s1,72(sp)
    sd x10, 80(sp)
    80001030:	04a13823          	sd	a0,80(sp)
    sd x11, 88(sp)
    80001034:	04b13c23          	sd	a1,88(sp)
    sd x12, 96(sp)
    80001038:	06c13023          	sd	a2,96(sp)
    sd x13, 104(sp)
    8000103c:	06d13423          	sd	a3,104(sp)
    sd x14, 112(sp)
    80001040:	06e13823          	sd	a4,112(sp)
    sd x15, 120(sp)
    80001044:	06f13c23          	sd	a5,120(sp)
    sd x16, 128(sp)
    80001048:	09013023          	sd	a6,128(sp)
    sd x17, 136(sp)
    8000104c:	09113423          	sd	a7,136(sp)
    sd x18, 144(sp)
    80001050:	09213823          	sd	s2,144(sp)
    sd x19, 152(sp)
    80001054:	09313c23          	sd	s3,152(sp)
    sd x20, 160(sp)
    80001058:	0b413023          	sd	s4,160(sp)
    sd x21, 168(sp)
    8000105c:	0b513423          	sd	s5,168(sp)
    sd x22, 176(sp)
    80001060:	0b613823          	sd	s6,176(sp)
    sd x23, 184(sp)
    80001064:	0b713c23          	sd	s7,184(sp)
    sd x24, 192(sp)
    80001068:	0d813023          	sd	s8,192(sp)
    sd x25, 200(sp)
    8000106c:	0d913423          	sd	s9,200(sp)
    sd x26, 208(sp)
    80001070:	0da13823          	sd	s10,208(sp)
    sd x27, 216(sp)
    80001074:	0db13c23          	sd	s11,216(sp)
    sd x28, 224(sp)
    80001078:	0fc13023          	sd	t3,224(sp)
    sd x29, 232(sp)
    8000107c:	0fd13423          	sd	t4,232(sp)
    sd x30, 240(sp)
    80001080:	0fe13823          	sd	t5,240(sp)
    sd x31, 248(sp)
    80001084:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv20handleSupervisorTrapEv
    80001088:	599020ef          	jal	ra,80003e20 <_ZN5Riscv20handleSupervisorTrapEv>

    ld x0, 0(sp)
    8000108c:	00013003          	ld	zero,0(sp)
    ld x1, 8(sp)
    80001090:	00813083          	ld	ra,8(sp)
    ld x2, 16(sp)
    80001094:	01013103          	ld	sp,16(sp)
    ld x3, 24(sp)
    80001098:	01813183          	ld	gp,24(sp)
    ld x4, 32(sp)
    8000109c:	02013203          	ld	tp,32(sp)
    ld x5, 40(sp)
    800010a0:	02813283          	ld	t0,40(sp)
    ld x6, 48(sp)
    800010a4:	03013303          	ld	t1,48(sp)
    ld x7, 56(sp)
    800010a8:	03813383          	ld	t2,56(sp)
    ld x8, 64(sp)
    800010ac:	04013403          	ld	s0,64(sp)
    ld x9, 72(sp)
    800010b0:	04813483          	ld	s1,72(sp)
    ld x10, 80(sp)
    800010b4:	05013503          	ld	a0,80(sp)
    ld x11, 88(sp)
    800010b8:	05813583          	ld	a1,88(sp)
    ld x12, 96(sp)
    800010bc:	06013603          	ld	a2,96(sp)
    ld x13, 104(sp)
    800010c0:	06813683          	ld	a3,104(sp)
    ld x14, 112(sp)
    800010c4:	07013703          	ld	a4,112(sp)
    ld x15, 120(sp)
    800010c8:	07813783          	ld	a5,120(sp)
    ld x16, 128(sp)
    800010cc:	08013803          	ld	a6,128(sp)
    ld x17, 136(sp)
    800010d0:	08813883          	ld	a7,136(sp)
    ld x18, 144(sp)
    800010d4:	09013903          	ld	s2,144(sp)
    ld x19, 152(sp)
    800010d8:	09813983          	ld	s3,152(sp)
    ld x20, 160(sp)
    800010dc:	0a013a03          	ld	s4,160(sp)
    ld x21, 168(sp)
    800010e0:	0a813a83          	ld	s5,168(sp)
    ld x22, 176(sp)
    800010e4:	0b013b03          	ld	s6,176(sp)
    ld x23, 184(sp)
    800010e8:	0b813b83          	ld	s7,184(sp)
    ld x24, 192(sp)
    800010ec:	0c013c03          	ld	s8,192(sp)
    ld x25, 200(sp)
    800010f0:	0c813c83          	ld	s9,200(sp)
    ld x26, 208(sp)
    800010f4:	0d013d03          	ld	s10,208(sp)
    ld x27, 216(sp)
    800010f8:	0d813d83          	ld	s11,216(sp)
    ld x28, 224(sp)
    800010fc:	0e013e03          	ld	t3,224(sp)
    ld x29, 232(sp)
    80001100:	0e813e83          	ld	t4,232(sp)
    ld x30, 240(sp)
    80001104:	0f013f03          	ld	t5,240(sp)
    ld x31, 248(sp)
    80001108:	0f813f83          	ld	t6,248(sp)

    addi sp, sp, 256
    8000110c:	10010113          	addi	sp,sp,256

    80001110:	10200073          	sret
	...

0000000080001120 <_ZN5Riscv13pushRegistersEv>:
.global _ZN5Riscv13pushRegistersEv
.type _ZN5Riscv13pushRegistersEv, @function
_ZN5Riscv13pushRegistersEv:
    addi sp, sp, -256
    80001120:	f0010113          	addi	sp,sp,-256
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001124:	00313c23          	sd	gp,24(sp)
    80001128:	02413023          	sd	tp,32(sp)
    8000112c:	02513423          	sd	t0,40(sp)
    80001130:	02613823          	sd	t1,48(sp)
    80001134:	02713c23          	sd	t2,56(sp)
    80001138:	04813023          	sd	s0,64(sp)
    8000113c:	04913423          	sd	s1,72(sp)
    80001140:	04a13823          	sd	a0,80(sp)
    80001144:	04b13c23          	sd	a1,88(sp)
    80001148:	06c13023          	sd	a2,96(sp)
    8000114c:	06d13423          	sd	a3,104(sp)
    80001150:	06e13823          	sd	a4,112(sp)
    80001154:	06f13c23          	sd	a5,120(sp)
    80001158:	09013023          	sd	a6,128(sp)
    8000115c:	09113423          	sd	a7,136(sp)
    80001160:	09213823          	sd	s2,144(sp)
    80001164:	09313c23          	sd	s3,152(sp)
    80001168:	0b413023          	sd	s4,160(sp)
    8000116c:	0b513423          	sd	s5,168(sp)
    80001170:	0b613823          	sd	s6,176(sp)
    80001174:	0b713c23          	sd	s7,184(sp)
    80001178:	0d813023          	sd	s8,192(sp)
    8000117c:	0d913423          	sd	s9,200(sp)
    80001180:	0da13823          	sd	s10,208(sp)
    80001184:	0db13c23          	sd	s11,216(sp)
    80001188:	0fc13023          	sd	t3,224(sp)
    8000118c:	0fd13423          	sd	t4,232(sp)
    80001190:	0fe13823          	sd	t5,240(sp)
    80001194:	0ff13c23          	sd	t6,248(sp)
    ret
    80001198:	00008067          	ret

000000008000119c <_ZN5Riscv12popRegistersEv>:
.global _ZN5Riscv12popRegistersEv
.type _ZN5Riscv12popRegistersEv, @function
_ZN5Riscv12popRegistersEv:
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    8000119c:	01813183          	ld	gp,24(sp)
    800011a0:	02013203          	ld	tp,32(sp)
    800011a4:	02813283          	ld	t0,40(sp)
    800011a8:	03013303          	ld	t1,48(sp)
    800011ac:	03813383          	ld	t2,56(sp)
    800011b0:	04013403          	ld	s0,64(sp)
    800011b4:	04813483          	ld	s1,72(sp)
    800011b8:	05013503          	ld	a0,80(sp)
    800011bc:	05813583          	ld	a1,88(sp)
    800011c0:	06013603          	ld	a2,96(sp)
    800011c4:	06813683          	ld	a3,104(sp)
    800011c8:	07013703          	ld	a4,112(sp)
    800011cc:	07813783          	ld	a5,120(sp)
    800011d0:	08013803          	ld	a6,128(sp)
    800011d4:	08813883          	ld	a7,136(sp)
    800011d8:	09013903          	ld	s2,144(sp)
    800011dc:	09813983          	ld	s3,152(sp)
    800011e0:	0a013a03          	ld	s4,160(sp)
    800011e4:	0a813a83          	ld	s5,168(sp)
    800011e8:	0b013b03          	ld	s6,176(sp)
    800011ec:	0b813b83          	ld	s7,184(sp)
    800011f0:	0c013c03          	ld	s8,192(sp)
    800011f4:	0c813c83          	ld	s9,200(sp)
    800011f8:	0d013d03          	ld	s10,208(sp)
    800011fc:	0d813d83          	ld	s11,216(sp)
    80001200:	0e013e03          	ld	t3,224(sp)
    80001204:	0e813e83          	ld	t4,232(sp)
    80001208:	0f013f03          	ld	t5,240(sp)
    8000120c:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001210:	10010113          	addi	sp,sp,256
    ret
    80001214:	00008067          	ret

0000000080001218 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001218:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    8000121c:	00b29a63          	bne	t0,a1,80001230 <fail>
    sc.w t0, a2, (a0)      # Try to update.
    80001220:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001224:	fe029ae3          	bnez	t0,80001218 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001228:	00000513          	li	a0,0
    jr ra                  # Return.
    8000122c:	00008067          	ret

0000000080001230 <fail>:
    fail:
    li a0, 1               # Set return to failure.
    80001230:	00100513          	li	a0,1
    80001234:	00008067          	ret

0000000080001238 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3PCB13contextSwitchEPNS_7ContextES1_
.type _ZN3PCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3PCB13contextSwitchEPNS_7ContextES1_:
    #a0 - &old->Context
    #a1 - &running->Context
    sd sp, 0 * 8(a0)
    80001238:	00253023          	sd	sp,0(a0) # 1000 <_entry-0x7ffff000>
    sd ra, 1 * 8(a0)
    8000123c:	00153423          	sd	ra,8(a0)

    ld sp, 0 * 8(a1)
    80001240:	0005b103          	ld	sp,0(a1)
    ld ra, 1 * 8(a1)
    80001244:	0085b083          	ld	ra,8(a1)

    ret
    80001248:	00008067          	ret

000000008000124c <_ZN3PCB20contextSwitchExitingEPNS_7ContextE>:

.global _ZN3PCB20contextSwitchExitingEPNS_7ContextE
.type _ZN3PCB20contextSwitchExitingEPNS_7ContextE, @function
_ZN3PCB20contextSwitchExitingEPNS_7ContextE:
    #a0 - &running->Context
    ld sp, 0 * 8(a0)
    8000124c:	00053103          	ld	sp,0(a0)
    ld ra, 1 * 8(a0)
    80001250:	00853083          	ld	ra,8(a0)

    80001254:	00008067          	ret

0000000080001258 <_Z6strcpyPKcPc>:
//singleton slab allocator
static slab_allocator_t* slabAllocator = nullptr;

//helping functions
void strcpy(const char* src, char* dst)
{
    80001258:	ff010113          	addi	sp,sp,-16
    8000125c:	00813423          	sd	s0,8(sp)
    80001260:	01010413          	addi	s0,sp,16
    while(*src != '\0')
    80001264:	00054783          	lbu	a5,0(a0)
    80001268:	00078863          	beqz	a5,80001278 <_Z6strcpyPKcPc+0x20>
    {
        *dst = *src;
    8000126c:	00f58023          	sb	a5,0(a1)
        src++;
    80001270:	00150513          	addi	a0,a0,1
    while(*src != '\0')
    80001274:	ff1ff06f          	j	80001264 <_Z6strcpyPKcPc+0xc>
    }
}
    80001278:	00813403          	ld	s0,8(sp)
    8000127c:	01010113          	addi	sp,sp,16
    80001280:	00008067          	ret

0000000080001284 <_Z19slab_allocator_initP14buddyAllocator>:

slab_allocator_t* slab_allocator_init(buddyAllocator *buddy)
{
    80001284:	fe010113          	addi	sp,sp,-32
    80001288:	00113c23          	sd	ra,24(sp)
    8000128c:	00813823          	sd	s0,16(sp)
    80001290:	00913423          	sd	s1,8(sp)
    80001294:	01213023          	sd	s2,0(sp)
    80001298:	02010413          	addi	s0,sp,32
    8000129c:	00050493          	mv	s1,a0
    slab_allocator_t* slabAllocatorLocal = (slab_allocator_t*)(buddy + 1);
    800012a0:	0e050913          	addi	s2,a0,224

    slabAllocatorLocal->buddy = buddy;
    800012a4:	0ea53023          	sd	a0,224(a0)
    slabAllocatorLocal->cacheList = nullptr;
    800012a8:	0e053423          	sd	zero,232(a0)
    for(size_t i = 0; i < CACHE_BUFFER_SIZE;i++)
    800012ac:	00000713          	li	a4,0
    800012b0:	0180006f          	j	800012c8 <_Z19slab_allocator_initP14buddyAllocator+0x44>
        slabAllocatorLocal->cachesBuffers[i] = nullptr;
    800012b4:	00270793          	addi	a5,a4,2
    800012b8:	00379793          	slli	a5,a5,0x3
    800012bc:	00f487b3          	add	a5,s1,a5
    800012c0:	0e07b023          	sd	zero,224(a5)
    for(size_t i = 0; i < CACHE_BUFFER_SIZE;i++)
    800012c4:	00170713          	addi	a4,a4,1
    800012c8:	00c00793          	li	a5,12
    800012cc:	fee7f4e3          	bgeu	a5,a4,800012b4 <_Z19slab_allocator_initP14buddyAllocator+0x30>

    //TODO
    //char* name = "Cache of caches";
    strcpy("Cache of caches", slabAllocatorLocal->cacheOfCaches.cacheName);
    800012d0:	15848593          	addi	a1,s1,344
    800012d4:	00007517          	auipc	a0,0x7
    800012d8:	d4c50513          	addi	a0,a0,-692 # 80008020 <CONSOLE_STATUS+0x10>
    800012dc:	00000097          	auipc	ra,0x0
    800012e0:	f7c080e7          	jalr	-132(ra) # 80001258 <_Z6strcpyPKcPc>
    slabAllocatorLocal->cacheOfCaches.next = nullptr;
    800012e4:	3404bc23          	sd	zero,856(s1)
    slabAllocatorLocal->cacheOfCaches.prev = nullptr;
    800012e8:	3604b023          	sd	zero,864(s1)
    slabAllocatorLocal->cacheOfCaches.ctor = nullptr;
    800012ec:	3804b823          	sd	zero,912(s1)
    slabAllocatorLocal->cacheOfCaches.dtor = nullptr;
    800012f0:	3804bc23          	sd	zero,920(s1)
    slabAllocatorLocal->cacheOfCaches.slabs_empty = nullptr;
    800012f4:	3604b423          	sd	zero,872(s1)
    slabAllocatorLocal->cacheOfCaches.slabs_full = nullptr;
    800012f8:	3604b823          	sd	zero,880(s1)
    slabAllocatorLocal->cacheOfCaches.slabs_partial = nullptr;
    800012fc:	3604bc23          	sd	zero,888(s1)
    slabAllocatorLocal->cacheOfCaches.slab_size = CACHE_OF_CACHES_SLAB_SIZE;
    80001300:	00200793          	li	a5,2
    80001304:	38f4b023          	sd	a5,896(s1)
    slabAllocatorLocal->cacheOfCaches.obj_size = sizeof(kmem_cache_t);
    80001308:	24800793          	li	a5,584
    8000130c:	38f4b423          	sd	a5,904(s1)
    return slabAllocatorLocal;
}
    80001310:	00090513          	mv	a0,s2
    80001314:	01813083          	ld	ra,24(sp)
    80001318:	01013403          	ld	s0,16(sp)
    8000131c:	00813483          	ld	s1,8(sp)
    80001320:	00013903          	ld	s2,0(sp)
    80001324:	02010113          	addi	sp,sp,32
    80001328:	00008067          	ret

000000008000132c <_Z14allocateObjectP6slab_s>:

void* allocateObject(slab_t* slab)
{
    8000132c:	ff010113          	addi	sp,sp,-16
    80001330:	00813423          	sd	s0,8(sp)
    80001334:	01010413          	addi	s0,sp,16
    80001338:	00050593          	mv	a1,a0
    int index = -1;
    void* addr = nullptr;
    for(size_t i = 0;i < slab->numOfObjects;i++)
    8000133c:	00000793          	li	a5,0
    80001340:	0185b703          	ld	a4,24(a1)
    80001344:	04e7f663          	bgeu	a5,a4,80001390 <_Z14allocateObjectP6slab_s+0x64>
    {
        size_t mask = 1 << (i%8);
    80001348:	0077f713          	andi	a4,a5,7
    8000134c:	00100613          	li	a2,1
    80001350:	00e616bb          	sllw	a3,a2,a4
        if((uint8)slab->allocated[i/8] & mask)
    80001354:	0037d713          	srli	a4,a5,0x3
    80001358:	00e58733          	add	a4,a1,a4
    8000135c:	03074703          	lbu	a4,48(a4)
    80001360:	00d77733          	and	a4,a4,a3
    80001364:	00071663          	bnez	a4,80001370 <_Z14allocateObjectP6slab_s+0x44>
    for(size_t i = 0;i < slab->numOfObjects;i++)
    80001368:	00178793          	addi	a5,a5,1
    8000136c:	fd5ff06f          	j	80001340 <_Z14allocateObjectP6slab_s+0x14>
        {
            addr = (void*)((size_t)slab->startAddress + sizeof(slab_t)+ i*slab->owner->obj_size);
    80001370:	0285b503          	ld	a0,40(a1)
    80001374:	0105b703          	ld	a4,16(a1)
    80001378:	23073703          	ld	a4,560(a4)
    8000137c:	02f70733          	mul	a4,a4,a5
    80001380:	00e50533          	add	a0,a0,a4
    80001384:	05050513          	addi	a0,a0,80
            index = i;
    80001388:	0007879b          	sext.w	a5,a5
            break;
    8000138c:	00c0006f          	j	80001398 <_Z14allocateObjectP6slab_s+0x6c>
    void* addr = nullptr;
    80001390:	00000513          	li	a0,0
    int index = -1;
    80001394:	fff00793          	li	a5,-1
        }
    }
    if(addr == nullptr)
    80001398:	04050063          	beqz	a0,800013d8 <_Z14allocateObjectP6slab_s+0xac>
        return nullptr;

    slab->allocated[index / 8]=(uint8)slab->allocated[index/8] | (1 << (index%8));
    8000139c:	41f7d69b          	sraiw	a3,a5,0x1f
    800013a0:	01d6d69b          	srliw	a3,a3,0x1d
    800013a4:	00f687bb          	addw	a5,a3,a5
    800013a8:	4037d71b          	sraiw	a4,a5,0x3
    800013ac:	00e58733          	add	a4,a1,a4
    800013b0:	03070603          	lb	a2,48(a4)
    800013b4:	0077f793          	andi	a5,a5,7
    800013b8:	40d787bb          	subw	a5,a5,a3
    800013bc:	00100693          	li	a3,1
    800013c0:	00f697bb          	sllw	a5,a3,a5
    800013c4:	00f667b3          	or	a5,a2,a5
    800013c8:	02f70823          	sb	a5,48(a4)
    slab->numOfAllocatedObjects++;
    800013cc:	0205b783          	ld	a5,32(a1)
    800013d0:	00178793          	addi	a5,a5,1
    800013d4:	02f5b023          	sd	a5,32(a1)

    return addr;
}
    800013d8:	00813403          	ld	s0,8(sp)
    800013dc:	01010113          	addi	sp,sp,16
    800013e0:	00008067          	ret

00000000800013e4 <_Z4fullP6slab_s>:
bool full(slab_t* slab)
{
    800013e4:	ff010113          	addi	sp,sp,-16
    800013e8:	00813423          	sd	s0,8(sp)
    800013ec:	01010413          	addi	s0,sp,16
    return slab->numOfAllocatedObjects == slab->numOfObjects;
    800013f0:	02053783          	ld	a5,32(a0)
    800013f4:	01853503          	ld	a0,24(a0)
    800013f8:	40f50533          	sub	a0,a0,a5
}
    800013fc:	00153513          	seqz	a0,a0
    80001400:	00813403          	ld	s0,8(sp)
    80001404:	01010113          	addi	sp,sp,16
    80001408:	00008067          	ret

000000008000140c <_Z5emptyP6slab_s>:

bool empty(slab_t* slab)
{
    8000140c:	ff010113          	addi	sp,sp,-16
    80001410:	00813423          	sd	s0,8(sp)
    80001414:	01010413          	addi	s0,sp,16
    return slab->numOfAllocatedObjects == 0;
    80001418:	02053503          	ld	a0,32(a0)
}
    8000141c:	00153513          	seqz	a0,a0
    80001420:	00813403          	ld	s0,8(sp)
    80001424:	01010113          	addi	sp,sp,16
    80001428:	00008067          	ret

000000008000142c <_Z16putPartialToFullP12kmem_cache_s>:

void putPartialToFull(kmem_cache_t* cachep)
{
    8000142c:	ff010113          	addi	sp,sp,-16
    80001430:	00813423          	sd	s0,8(sp)
    80001434:	01010413          	addi	s0,sp,16
    slab_t* slab = cachep->slabs_partial;
    80001438:	22053783          	ld	a5,544(a0)
    cachep->slabs_partial = cachep->slabs_partial->next;
    8000143c:	0087b703          	ld	a4,8(a5)
    80001440:	22e53023          	sd	a4,544(a0)
    if(cachep->slabs_partial!=nullptr)
    80001444:	00070463          	beqz	a4,8000144c <_Z16putPartialToFullP12kmem_cache_s+0x20>
        cachep->slabs_partial = nullptr;
    80001448:	22053023          	sd	zero,544(a0)
    slab->next = cachep->slabs_full;
    8000144c:	21853703          	ld	a4,536(a0)
    80001450:	00e7b423          	sd	a4,8(a5)
    if(cachep->slabs_full != nullptr)
    80001454:	21853703          	ld	a4,536(a0)
    80001458:	00070463          	beqz	a4,80001460 <_Z16putPartialToFullP12kmem_cache_s+0x34>
        cachep->slabs_full->prev = slab;
    8000145c:	00f73023          	sd	a5,0(a4)
    cachep->slabs_full = slab;
    80001460:	20f53c23          	sd	a5,536(a0)
    slab->prev = nullptr;
    80001464:	0007b023          	sd	zero,0(a5)
}
    80001468:	00813403          	ld	s0,8(sp)
    8000146c:	01010113          	addi	sp,sp,16
    80001470:	00008067          	ret

0000000080001474 <_Z17putEmptyToPartialP12kmem_cache_s>:

void putEmptyToPartial(kmem_cache_t* cachep)
{
    80001474:	ff010113          	addi	sp,sp,-16
    80001478:	00813423          	sd	s0,8(sp)
    8000147c:	01010413          	addi	s0,sp,16
    slab_t* slab = cachep->slabs_empty;
    80001480:	21053783          	ld	a5,528(a0)
    cachep->slabs_empty = cachep->slabs_empty->next;
    80001484:	0087b703          	ld	a4,8(a5)
    80001488:	20e53823          	sd	a4,528(a0)
    if(cachep->slabs_empty != nullptr)
    8000148c:	00070463          	beqz	a4,80001494 <_Z17putEmptyToPartialP12kmem_cache_s+0x20>
        cachep->slabs_empty = nullptr;
    80001490:	20053823          	sd	zero,528(a0)
    slab->next = cachep->slabs_partial;
    80001494:	22053703          	ld	a4,544(a0)
    80001498:	00e7b423          	sd	a4,8(a5)
    if(cachep->slabs_partial != nullptr)
    8000149c:	22053703          	ld	a4,544(a0)
    800014a0:	00070463          	beqz	a4,800014a8 <_Z17putEmptyToPartialP12kmem_cache_s+0x34>
        cachep->slabs_partial->prev = slab;
    800014a4:	00f73023          	sd	a5,0(a4)
    cachep->slabs_partial = slab;
    800014a8:	22f53023          	sd	a5,544(a0)
    slab->prev = nullptr;
    800014ac:	0007b023          	sd	zero,0(a5)
}
    800014b0:	00813403          	ld	s0,8(sp)
    800014b4:	01010113          	addi	sp,sp,16
    800014b8:	00008067          	ret

00000000800014bc <_Z12allocateSlabP12kmem_cache_s>:

void allocateSlab(kmem_cache_t* cachep)
{
    800014bc:	fe010113          	addi	sp,sp,-32
    800014c0:	00113c23          	sd	ra,24(sp)
    800014c4:	00813823          	sd	s0,16(sp)
    800014c8:	00913423          	sd	s1,8(sp)
    800014cc:	02010413          	addi	s0,sp,32
    800014d0:	00050493          	mv	s1,a0
    slab_t* newSlab = (slab_t*)buddy_alloc(slabAllocator->buddy,cachep->slab_size*BLOCK_SIZE);
    800014d4:	22853583          	ld	a1,552(a0)
    800014d8:	00c59593          	slli	a1,a1,0xc
    800014dc:	00009797          	auipc	a5,0x9
    800014e0:	0e47b783          	ld	a5,228(a5) # 8000a5c0 <_ZL13slabAllocator>
    800014e4:	0007b503          	ld	a0,0(a5)
    800014e8:	00001097          	auipc	ra,0x1
    800014ec:	1c4080e7          	jalr	452(ra) # 800026ac <_Z11buddy_allocP14buddyAllocatorm>
    newSlab->next = cachep->slabs_empty;
    800014f0:	2104b783          	ld	a5,528(s1)
    800014f4:	00f53423          	sd	a5,8(a0)
    if(cachep->slabs_empty != nullptr)
    800014f8:	00078463          	beqz	a5,80001500 <_Z12allocateSlabP12kmem_cache_s+0x44>
        cachep->slabs_empty->prev = newSlab;
    800014fc:	00a7b023          	sd	a0,0(a5)
    cachep->slabs_empty = newSlab;
    80001500:	20a4b823          	sd	a0,528(s1)
    newSlab->prev = nullptr;
    80001504:	00053023          	sd	zero,0(a0)
    newSlab->numOfAllocatedObjects = 0;
    80001508:	02053023          	sd	zero,32(a0)
    newSlab->owner = cachep;
    8000150c:	00953823          	sd	s1,16(a0)
    newSlab->startAddress = (void*)newSlab;
    80001510:	02a53423          	sd	a0,40(a0)
    size_t sizeInBytes = cachep->slab_size*BLOCK_SIZE;
    80001514:	2284b683          	ld	a3,552(s1)
    80001518:	00c69693          	slli	a3,a3,0xc
    newSlab->numOfObjects = (sizeInBytes - sizeof(slab_t)) / cachep->obj_size; // TODO can this param be in cache ?
    8000151c:	fb068693          	addi	a3,a3,-80
    80001520:	2304b783          	ld	a5,560(s1)
    80001524:	02f6d6b3          	divu	a3,a3,a5
    80001528:	00d53c23          	sd	a3,24(a0)
    for(size_t i = 0; i < newSlab->numOfObjects / 8;i++)
    8000152c:	00000793          	li	a5,0
    80001530:	0036d713          	srli	a4,a3,0x3
    80001534:	00e7fa63          	bgeu	a5,a4,80001548 <_Z12allocateSlabP12kmem_cache_s+0x8c>
        newSlab->allocated[i] = 0;
    80001538:	00f50733          	add	a4,a0,a5
    8000153c:	02070823          	sb	zero,48(a4)
    for(size_t i = 0; i < newSlab->numOfObjects / 8;i++)
    80001540:	00178793          	addi	a5,a5,1
    80001544:	fedff06f          	j	80001530 <_Z12allocateSlabP12kmem_cache_s+0x74>
}
    80001548:	01813083          	ld	ra,24(sp)
    8000154c:	01013403          	ld	s0,16(sp)
    80001550:	00813483          	ld	s1,8(sp)
    80001554:	02010113          	addi	sp,sp,32
    80001558:	00008067          	ret

000000008000155c <_Z18getOptimalSlabSizem>:

size_t getOptimalSlabSize(size_t obj_size)
{
    8000155c:	ff010113          	addi	sp,sp,-16
    80001560:	00813423          	sd	s0,8(sp)
    80001564:	01010413          	addi	s0,sp,16
    size_t bestSize = BLOCK_SIZE;
    80001568:	000017b7          	lui	a5,0x1
    while(bestSize < obj_size + sizeof(slab_t))
    8000156c:	05050713          	addi	a4,a0,80
    80001570:	00e7f663          	bgeu	a5,a4,8000157c <_Z18getOptimalSlabSizem+0x20>
        bestSize<<=1;
    80001574:	00179793          	slli	a5,a5,0x1
    while(bestSize < obj_size + sizeof(slab_t))
    80001578:	ff5ff06f          	j	8000156c <_Z18getOptimalSlabSizem+0x10>
    size_t optimalWaste = (bestSize - sizeof(slab_t)) % obj_size;
    8000157c:	fb078593          	addi	a1,a5,-80 # fb0 <_entry-0x7ffff050>
    80001580:	02a5f5b3          	remu	a1,a1,a0

    for(int i = 1;i<=4;i++) //change constants
    80001584:	00100713          	li	a4,1
    80001588:	0080006f          	j	80001590 <_Z18getOptimalSlabSizem+0x34>
    8000158c:	0017071b          	addiw	a4,a4,1
    80001590:	00400693          	li	a3,4
    80001594:	02e6c063          	blt	a3,a4,800015b4 <_Z18getOptimalSlabSizem+0x58>
    {
        size_t newSize = bestSize << i;
    80001598:	00e79633          	sll	a2,a5,a4
        size_t newWaste = (newSize - sizeof(slab_t)) % obj_size;
    8000159c:	fb060693          	addi	a3,a2,-80
    800015a0:	02a6f6b3          	remu	a3,a3,a0
        if(newWaste < optimalWaste)
    800015a4:	feb6f4e3          	bgeu	a3,a1,8000158c <_Z18getOptimalSlabSizem+0x30>
        {
            optimalWaste = newWaste;
    800015a8:	00068593          	mv	a1,a3
            bestSize = newSize;
    800015ac:	00060793          	mv	a5,a2
    800015b0:	fddff06f          	j	8000158c <_Z18getOptimalSlabSizem+0x30>
        }
    }

    return bestSize / BLOCK_SIZE;
}
    800015b4:	00c7d513          	srli	a0,a5,0xc
    800015b8:	00813403          	ld	s0,8(sp)
    800015bc:	01010113          	addi	sp,sp,16
    800015c0:	00008067          	ret

00000000800015c4 <_Z8findSlabP12kmem_cache_sPv>:

//finds the slab where objp is
slab_t* findSlab(kmem_cache_t* cachep, void* objp)
{
    800015c4:	ff010113          	addi	sp,sp,-16
    800015c8:	00813423          	sd	s0,8(sp)
    800015cc:	01010413          	addi	s0,sp,16
    800015d0:	00050693          	mv	a3,a0
    slab_t* slab = cachep->slabs_full;
    800015d4:	21853503          	ld	a0,536(a0)
    800015d8:	0080006f          	j	800015e0 <_Z8findSlabP12kmem_cache_sPv+0x1c>
    while(slab != nullptr)
    {
        size_t endAddr = (size_t)slab + sizeof(slab_t) + slab->numOfObjects*slab->owner->obj_size;
        if((size_t)objp > (size_t)slab && (size_t)objp < endAddr)
            return slab;
        slab = slab->next;
    800015dc:	00853503          	ld	a0,8(a0)
    while(slab != nullptr)
    800015e0:	02050863          	beqz	a0,80001610 <_Z8findSlabP12kmem_cache_sPv+0x4c>
        size_t endAddr = (size_t)slab + sizeof(slab_t) + slab->numOfObjects*slab->owner->obj_size;
    800015e4:	01853783          	ld	a5,24(a0)
    800015e8:	01053703          	ld	a4,16(a0)
    800015ec:	23073703          	ld	a4,560(a4)
    800015f0:	02e787b3          	mul	a5,a5,a4
    800015f4:	00a787b3          	add	a5,a5,a0
    800015f8:	05078793          	addi	a5,a5,80
        if((size_t)objp > (size_t)slab && (size_t)objp < endAddr)
    800015fc:	feb570e3          	bgeu	a0,a1,800015dc <_Z8findSlabP12kmem_cache_sPv+0x18>
    80001600:	fcf5fee3          	bgeu	a1,a5,800015dc <_Z8findSlabP12kmem_cache_sPv+0x18>
            return slab;
        slab = slab->next;
    }

    return nullptr;
}
    80001604:	00813403          	ld	s0,8(sp)
    80001608:	01010113          	addi	sp,sp,16
    8000160c:	00008067          	ret
    slab = cachep->slabs_partial;
    80001610:	2206b503          	ld	a0,544(a3)
    80001614:	0080006f          	j	8000161c <_Z8findSlabP12kmem_cache_sPv+0x58>
        slab = slab->next;
    80001618:	00853503          	ld	a0,8(a0)
    while(slab != nullptr)
    8000161c:	fe0504e3          	beqz	a0,80001604 <_Z8findSlabP12kmem_cache_sPv+0x40>
        size_t endAddr = (size_t)slab + sizeof(slab_t) + slab->numOfObjects*slab->owner->obj_size;
    80001620:	01853783          	ld	a5,24(a0)
    80001624:	01053703          	ld	a4,16(a0)
    80001628:	23073703          	ld	a4,560(a4)
    8000162c:	02e787b3          	mul	a5,a5,a4
    80001630:	00a787b3          	add	a5,a5,a0
    80001634:	05078793          	addi	a5,a5,80
        if((size_t)objp > (size_t)slab && (size_t)objp < endAddr)
    80001638:	feb570e3          	bgeu	a0,a1,80001618 <_Z8findSlabP12kmem_cache_sPv+0x54>
    8000163c:	fcf5fee3          	bgeu	a1,a5,80001618 <_Z8findSlabP12kmem_cache_sPv+0x54>
    80001640:	fc5ff06f          	j	80001604 <_Z8findSlabP12kmem_cache_sPv+0x40>

0000000080001644 <_Z19resetAllocatedIndexP6slab_si>:

void resetAllocatedIndex(slab_t* slab, int index)
{
    80001644:	ff010113          	addi	sp,sp,-16
    80001648:	00813423          	sd	s0,8(sp)
    8000164c:	01010413          	addi	s0,sp,16
    //TODO test it
    slab->allocated[index / 8]=(uint8)slab->allocated[index/8] & ~(1 << (index%8));
    80001650:	41f5d79b          	sraiw	a5,a1,0x1f
    80001654:	01d7d79b          	srliw	a5,a5,0x1d
    80001658:	00b785bb          	addw	a1,a5,a1
    8000165c:	4035d71b          	sraiw	a4,a1,0x3
    80001660:	00e50533          	add	a0,a0,a4
    80001664:	03050703          	lb	a4,48(a0)
    80001668:	0075f593          	andi	a1,a1,7
    8000166c:	40f585bb          	subw	a1,a1,a5
    80001670:	00100793          	li	a5,1
    80001674:	00b795bb          	sllw	a1,a5,a1
    80001678:	fff5c593          	not	a1,a1
    8000167c:	00b775b3          	and	a1,a4,a1
    80001680:	02b50823          	sb	a1,48(a0)
}
    80001684:	00813403          	ld	s0,8(sp)
    80001688:	01010113          	addi	sp,sp,16
    8000168c:	00008067          	ret

0000000080001690 <_Z14removeFullSlabP12kmem_cache_sP6slab_s>:

void removeFullSlab(kmem_cache_t * cachep, slab_t* slab)
{
    80001690:	ff010113          	addi	sp,sp,-16
    80001694:	00813423          	sd	s0,8(sp)
    80001698:	01010413          	addi	s0,sp,16
    if(slab->prev)
    8000169c:	0005b783          	ld	a5,0(a1)
    800016a0:	04078063          	beqz	a5,800016e0 <_Z14removeFullSlabP12kmem_cache_sP6slab_s+0x50>
    {
        slab->prev->next = slab->next;
    800016a4:	0085b703          	ld	a4,8(a1)
    800016a8:	00e7b423          	sd	a4,8(a5)
        slab->next->prev = slab->prev;
    800016ac:	0085b783          	ld	a5,8(a1)
    800016b0:	0005b703          	ld	a4,0(a1)
    800016b4:	00e7b023          	sd	a4,0(a5)
    else
    {
        slab->next->prev = nullptr;
        cachep->slabs_full = slab->next;
    }
    slab->next = cachep->slabs_partial;
    800016b8:	22053783          	ld	a5,544(a0)
    800016bc:	00f5b423          	sd	a5,8(a1)
    slab->prev = nullptr;
    800016c0:	0005b023          	sd	zero,0(a1)
    if(cachep->slabs_partial)
    800016c4:	22053783          	ld	a5,544(a0)
    800016c8:	00078463          	beqz	a5,800016d0 <_Z14removeFullSlabP12kmem_cache_sP6slab_s+0x40>
        cachep->slabs_partial->prev = slab;
    800016cc:	00b7b023          	sd	a1,0(a5)
    cachep->slabs_partial = slab;
    800016d0:	22b53023          	sd	a1,544(a0)
}
    800016d4:	00813403          	ld	s0,8(sp)
    800016d8:	01010113          	addi	sp,sp,16
    800016dc:	00008067          	ret
        slab->next->prev = nullptr;
    800016e0:	0085b783          	ld	a5,8(a1)
    800016e4:	0007b023          	sd	zero,0(a5)
        cachep->slabs_full = slab->next;
    800016e8:	0085b783          	ld	a5,8(a1)
    800016ec:	20f53c23          	sd	a5,536(a0)
    800016f0:	fc9ff06f          	j	800016b8 <_Z14removeFullSlabP12kmem_cache_sP6slab_s+0x28>

00000000800016f4 <_Z17removePartialSlabP12kmem_cache_sP6slab_s>:

void removePartialSlab(kmem_cache_t * cachep, slab_t* slab)
{
    800016f4:	ff010113          	addi	sp,sp,-16
    800016f8:	00813423          	sd	s0,8(sp)
    800016fc:	01010413          	addi	s0,sp,16
    if(slab->prev)
    80001700:	0005b783          	ld	a5,0(a1)
    80001704:	04078063          	beqz	a5,80001744 <_Z17removePartialSlabP12kmem_cache_sP6slab_s+0x50>
    {
        slab->prev->next = slab->next;
    80001708:	0085b703          	ld	a4,8(a1)
    8000170c:	00e7b423          	sd	a4,8(a5)
        slab->next->prev = slab->prev;
    80001710:	0085b783          	ld	a5,8(a1)
    80001714:	0005b703          	ld	a4,0(a1)
    80001718:	00e7b023          	sd	a4,0(a5)
    else
    {
        slab->next->prev = nullptr;
        cachep->slabs_partial = slab->next;
    }
    slab->next = cachep->slabs_empty;
    8000171c:	21053783          	ld	a5,528(a0)
    80001720:	00f5b423          	sd	a5,8(a1)
    slab->prev = nullptr;
    80001724:	0005b023          	sd	zero,0(a1)
    if(cachep->slabs_empty)
    80001728:	21053783          	ld	a5,528(a0)
    8000172c:	00078463          	beqz	a5,80001734 <_Z17removePartialSlabP12kmem_cache_sP6slab_s+0x40>
        cachep->slabs_empty->prev = slab;
    80001730:	00b7b023          	sd	a1,0(a5)
    cachep->slabs_empty = slab;
    80001734:	20b53823          	sd	a1,528(a0)
}
    80001738:	00813403          	ld	s0,8(sp)
    8000173c:	01010113          	addi	sp,sp,16
    80001740:	00008067          	ret
        slab->next->prev = nullptr;
    80001744:	0085b783          	ld	a5,8(a1)
    80001748:	0007b023          	sd	zero,0(a5)
        cachep->slabs_partial = slab->next;
    8000174c:	0085b783          	ld	a5,8(a1)
    80001750:	22f53023          	sd	a5,544(a0)
    80001754:	fc9ff06f          	j	8000171c <_Z17removePartialSlabP12kmem_cache_sP6slab_s+0x28>

0000000080001758 <_Z13printSlabInfoP6slab_s>:

void printSlabInfo(slab_t* slab)
{
    80001758:	fe010113          	addi	sp,sp,-32
    8000175c:	00113c23          	sd	ra,24(sp)
    80001760:	00813823          	sd	s0,16(sp)
    80001764:	00913423          	sd	s1,8(sp)
    80001768:	02010413          	addi	s0,sp,32
    8000176c:	00050493          	mv	s1,a0
    KConsole::trapPrintString("Slab address ");
    80001770:	00007517          	auipc	a0,0x7
    80001774:	8c050513          	addi	a0,a0,-1856 # 80008030 <CONSOLE_STATUS+0x20>
    80001778:	00002097          	auipc	ra,0x2
    8000177c:	ad0080e7          	jalr	-1328(ra) # 80003248 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintInt((size_t)slab);KConsole::trapPrintString("\n");
    80001780:	00000613          	li	a2,0
    80001784:	00a00593          	li	a1,10
    80001788:	00048513          	mv	a0,s1
    8000178c:	00002097          	auipc	ra,0x2
    80001790:	b00080e7          	jalr	-1280(ra) # 8000328c <_ZN8KConsole12trapPrintIntEmii>
    80001794:	00007517          	auipc	a0,0x7
    80001798:	e6c50513          	addi	a0,a0,-404 # 80008600 <CONSOLE_STATUS+0x5f0>
    8000179c:	00002097          	auipc	ra,0x2
    800017a0:	aac080e7          	jalr	-1364(ra) # 80003248 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Number of allocated objects ");
    800017a4:	00007517          	auipc	a0,0x7
    800017a8:	89c50513          	addi	a0,a0,-1892 # 80008040 <CONSOLE_STATUS+0x30>
    800017ac:	00002097          	auipc	ra,0x2
    800017b0:	a9c080e7          	jalr	-1380(ra) # 80003248 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintInt(slab->numOfAllocatedObjects);KConsole::trapPrintString("\n");
    800017b4:	00000613          	li	a2,0
    800017b8:	00a00593          	li	a1,10
    800017bc:	0204b503          	ld	a0,32(s1)
    800017c0:	00002097          	auipc	ra,0x2
    800017c4:	acc080e7          	jalr	-1332(ra) # 8000328c <_ZN8KConsole12trapPrintIntEmii>
    800017c8:	00007517          	auipc	a0,0x7
    800017cc:	e3850513          	addi	a0,a0,-456 # 80008600 <CONSOLE_STATUS+0x5f0>
    800017d0:	00002097          	auipc	ra,0x2
    800017d4:	a78080e7          	jalr	-1416(ra) # 80003248 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Number of objects ");
    800017d8:	00007517          	auipc	a0,0x7
    800017dc:	88850513          	addi	a0,a0,-1912 # 80008060 <CONSOLE_STATUS+0x50>
    800017e0:	00002097          	auipc	ra,0x2
    800017e4:	a68080e7          	jalr	-1432(ra) # 80003248 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintInt(slab->numOfObjects);KConsole::trapPrintString("\n");
    800017e8:	00000613          	li	a2,0
    800017ec:	00a00593          	li	a1,10
    800017f0:	0184b503          	ld	a0,24(s1)
    800017f4:	00002097          	auipc	ra,0x2
    800017f8:	a98080e7          	jalr	-1384(ra) # 8000328c <_ZN8KConsole12trapPrintIntEmii>
    800017fc:	00007517          	auipc	a0,0x7
    80001800:	e0450513          	addi	a0,a0,-508 # 80008600 <CONSOLE_STATUS+0x5f0>
    80001804:	00002097          	auipc	ra,0x2
    80001808:	a44080e7          	jalr	-1468(ra) # 80003248 <_ZN8KConsole15trapPrintStringEPKc>
}
    8000180c:	01813083          	ld	ra,24(sp)
    80001810:	01013403          	ld	s0,16(sp)
    80001814:	00813483          	ld	s1,8(sp)
    80001818:	02010113          	addi	sp,sp,32
    8000181c:	00008067          	ret

0000000080001820 <_Z9kmem_initPvi>:

//slab allocator public interface-----------------------------------------------------------------------------
void kmem_init(void *space, int block_num)
{
    80001820:	ff010113          	addi	sp,sp,-16
    80001824:	00113423          	sd	ra,8(sp)
    80001828:	00813023          	sd	s0,0(sp)
    8000182c:	01010413          	addi	s0,sp,16
    buddyAllocator* buddy = buddy_init(space, block_num);
    80001830:	00001097          	auipc	ra,0x1
    80001834:	1a8080e7          	jalr	424(ra) # 800029d8 <_Z10buddy_initPvm>
    slabAllocator = slab_allocator_init(buddy);
    80001838:	00000097          	auipc	ra,0x0
    8000183c:	a4c080e7          	jalr	-1460(ra) # 80001284 <_Z19slab_allocator_initP14buddyAllocator>
    80001840:	00009797          	auipc	a5,0x9
    80001844:	d8a7b023          	sd	a0,-640(a5) # 8000a5c0 <_ZL13slabAllocator>
}
    80001848:	00813083          	ld	ra,8(sp)
    8000184c:	00013403          	ld	s0,0(sp)
    80001850:	01010113          	addi	sp,sp,16
    80001854:	00008067          	ret

0000000080001858 <_Z16kmem_cache_allocP12kmem_cache_s>:
    newCache->slab_size = getOptimalSlabSize(size);
    return nullptr;
}

void *kmem_cache_alloc(kmem_cache_t *cachep)
{
    80001858:	fe010113          	addi	sp,sp,-32
    8000185c:	00113c23          	sd	ra,24(sp)
    80001860:	00813823          	sd	s0,16(sp)
    80001864:	00913423          	sd	s1,8(sp)
    80001868:	01213023          	sd	s2,0(sp)
    8000186c:	02010413          	addi	s0,sp,32
    80001870:	00050493          	mv	s1,a0
    if(cachep->slabs_partial != nullptr)
    80001874:	22053503          	ld	a0,544(a0)
    80001878:	02051c63          	bnez	a0,800018b0 <_Z16kmem_cache_allocP12kmem_cache_s+0x58>
        void* allocatedAddr = allocateObject(cachep->slabs_partial);
        if(full(cachep->slabs_partial))
            putPartialToFull(cachep);
        return allocatedAddr;
    }
    else if(cachep->slabs_empty != nullptr)
    8000187c:	2104b503          	ld	a0,528(s1)
    80001880:	06050c63          	beqz	a0,800018f8 <_Z16kmem_cache_allocP12kmem_cache_s+0xa0>
    {
        void* allocatedAddr = allocateObject(cachep->slabs_empty);
    80001884:	00000097          	auipc	ra,0x0
    80001888:	aa8080e7          	jalr	-1368(ra) # 8000132c <_Z14allocateObjectP6slab_s>
    8000188c:	00050913          	mv	s2,a0
        if(!empty(cachep->slabs_empty))
    80001890:	2104b503          	ld	a0,528(s1)
    80001894:	00000097          	auipc	ra,0x0
    80001898:	b78080e7          	jalr	-1160(ra) # 8000140c <_Z5emptyP6slab_s>
    8000189c:	02051863          	bnez	a0,800018cc <_Z16kmem_cache_allocP12kmem_cache_s+0x74>
            putEmptyToPartial(cachep);
    800018a0:	00048513          	mv	a0,s1
    800018a4:	00000097          	auipc	ra,0x0
    800018a8:	bd0080e7          	jalr	-1072(ra) # 80001474 <_Z17putEmptyToPartialP12kmem_cache_s>
        return allocatedAddr;
    800018ac:	0200006f          	j	800018cc <_Z16kmem_cache_allocP12kmem_cache_s+0x74>
        void* allocatedAddr = allocateObject(cachep->slabs_partial);
    800018b0:	00000097          	auipc	ra,0x0
    800018b4:	a7c080e7          	jalr	-1412(ra) # 8000132c <_Z14allocateObjectP6slab_s>
    800018b8:	00050913          	mv	s2,a0
        if(full(cachep->slabs_partial))
    800018bc:	2204b503          	ld	a0,544(s1)
    800018c0:	00000097          	auipc	ra,0x0
    800018c4:	b24080e7          	jalr	-1244(ra) # 800013e4 <_Z4fullP6slab_s>
    800018c8:	02051063          	bnez	a0,800018e8 <_Z16kmem_cache_allocP12kmem_cache_s+0x90>
        if(!empty(cachep->slabs_empty))
            putEmptyToPartial(cachep);
        return allocatedAddr;
    }
    return nullptr;
}
    800018cc:	00090513          	mv	a0,s2
    800018d0:	01813083          	ld	ra,24(sp)
    800018d4:	01013403          	ld	s0,16(sp)
    800018d8:	00813483          	ld	s1,8(sp)
    800018dc:	00013903          	ld	s2,0(sp)
    800018e0:	02010113          	addi	sp,sp,32
    800018e4:	00008067          	ret
            putPartialToFull(cachep);
    800018e8:	00048513          	mv	a0,s1
    800018ec:	00000097          	auipc	ra,0x0
    800018f0:	b40080e7          	jalr	-1216(ra) # 8000142c <_Z16putPartialToFullP12kmem_cache_s>
        return allocatedAddr;
    800018f4:	fd9ff06f          	j	800018cc <_Z16kmem_cache_allocP12kmem_cache_s+0x74>
        allocateSlab(cachep);
    800018f8:	00048513          	mv	a0,s1
    800018fc:	00000097          	auipc	ra,0x0
    80001900:	bc0080e7          	jalr	-1088(ra) # 800014bc <_Z12allocateSlabP12kmem_cache_s>
        if(cachep->slabs_empty == nullptr)
    80001904:	2104b903          	ld	s2,528(s1)
    80001908:	fc0902e3          	beqz	s2,800018cc <_Z16kmem_cache_allocP12kmem_cache_s+0x74>
        void* allocatedAddr = allocateObject(cachep->slabs_empty);
    8000190c:	00090513          	mv	a0,s2
    80001910:	00000097          	auipc	ra,0x0
    80001914:	a1c080e7          	jalr	-1508(ra) # 8000132c <_Z14allocateObjectP6slab_s>
    80001918:	00050913          	mv	s2,a0
        if(!empty(cachep->slabs_empty))
    8000191c:	2104b503          	ld	a0,528(s1)
    80001920:	00000097          	auipc	ra,0x0
    80001924:	aec080e7          	jalr	-1300(ra) # 8000140c <_Z5emptyP6slab_s>
    80001928:	fa0512e3          	bnez	a0,800018cc <_Z16kmem_cache_allocP12kmem_cache_s+0x74>
            putEmptyToPartial(cachep);
    8000192c:	00048513          	mv	a0,s1
    80001930:	00000097          	auipc	ra,0x0
    80001934:	b44080e7          	jalr	-1212(ra) # 80001474 <_Z17putEmptyToPartialP12kmem_cache_s>
        return allocatedAddr;
    80001938:	f95ff06f          	j	800018cc <_Z16kmem_cache_allocP12kmem_cache_s+0x74>

000000008000193c <_Z17kmem_cache_createPKcmPFvPvES3_>:
{
    8000193c:	fc010113          	addi	sp,sp,-64
    80001940:	02113c23          	sd	ra,56(sp)
    80001944:	02813823          	sd	s0,48(sp)
    80001948:	02913423          	sd	s1,40(sp)
    8000194c:	03213023          	sd	s2,32(sp)
    80001950:	01313c23          	sd	s3,24(sp)
    80001954:	01413823          	sd	s4,16(sp)
    80001958:	01513423          	sd	s5,8(sp)
    8000195c:	04010413          	addi	s0,sp,64
    80001960:	00050993          	mv	s3,a0
    80001964:	00058913          	mv	s2,a1
    80001968:	00060a13          	mv	s4,a2
    8000196c:	00068a93          	mv	s5,a3
    kmem_cache_t* newCache = (kmem_cache_t*)kmem_cache_alloc(&slabAllocator->cacheOfCaches);
    80001970:	00009517          	auipc	a0,0x9
    80001974:	c5053503          	ld	a0,-944(a0) # 8000a5c0 <_ZL13slabAllocator>
    80001978:	07850513          	addi	a0,a0,120
    8000197c:	00000097          	auipc	ra,0x0
    80001980:	edc080e7          	jalr	-292(ra) # 80001858 <_Z16kmem_cache_allocP12kmem_cache_s>
    80001984:	00050493          	mv	s1,a0
    newCache->slabs_empty = nullptr;
    80001988:	20053823          	sd	zero,528(a0)
    newCache->slabs_partial = nullptr;
    8000198c:	22053023          	sd	zero,544(a0)
    newCache->slabs_full = nullptr;
    80001990:	20053c23          	sd	zero,536(a0)
    newCache->next = newCache->prev = nullptr;
    80001994:	20053423          	sd	zero,520(a0)
    80001998:	20053023          	sd	zero,512(a0)
    newCache->dtor = dtor;
    8000199c:	25553023          	sd	s5,576(a0)
    newCache->ctor = ctor;
    800019a0:	23453c23          	sd	s4,568(a0)
    strcpy(name, newCache->cacheName);
    800019a4:	00050593          	mv	a1,a0
    800019a8:	00098513          	mv	a0,s3
    800019ac:	00000097          	auipc	ra,0x0
    800019b0:	8ac080e7          	jalr	-1876(ra) # 80001258 <_Z6strcpyPKcPc>
    newCache->obj_size = size;
    800019b4:	2324b823          	sd	s2,560(s1)
    newCache->slab_size = getOptimalSlabSize(size);
    800019b8:	00090513          	mv	a0,s2
    800019bc:	00000097          	auipc	ra,0x0
    800019c0:	ba0080e7          	jalr	-1120(ra) # 8000155c <_Z18getOptimalSlabSizem>
    800019c4:	22a4b423          	sd	a0,552(s1)
}
    800019c8:	00000513          	li	a0,0
    800019cc:	03813083          	ld	ra,56(sp)
    800019d0:	03013403          	ld	s0,48(sp)
    800019d4:	02813483          	ld	s1,40(sp)
    800019d8:	02013903          	ld	s2,32(sp)
    800019dc:	01813983          	ld	s3,24(sp)
    800019e0:	01013a03          	ld	s4,16(sp)
    800019e4:	00813a83          	ld	s5,8(sp)
    800019e8:	04010113          	addi	sp,sp,64
    800019ec:	00008067          	ret

00000000800019f0 <_Z15kmem_cache_freeP12kmem_cache_sPv>:

void kmem_cache_free(kmem_cache_t *cachep, void *objp)
{
    800019f0:	fd010113          	addi	sp,sp,-48
    800019f4:	02113423          	sd	ra,40(sp)
    800019f8:	02813023          	sd	s0,32(sp)
    800019fc:	00913c23          	sd	s1,24(sp)
    80001a00:	01213823          	sd	s2,16(sp)
    80001a04:	01313423          	sd	s3,8(sp)
    80001a08:	03010413          	addi	s0,sp,48
    80001a0c:	00050993          	mv	s3,a0
    80001a10:	00058913          	mv	s2,a1
    slab_t* slab = findSlab(cachep, objp);
    80001a14:	00000097          	auipc	ra,0x0
    80001a18:	bb0080e7          	jalr	-1104(ra) # 800015c4 <_Z8findSlabP12kmem_cache_sPv>
    if(slab == nullptr) return;
    80001a1c:	02050863          	beqz	a0,80001a4c <_Z15kmem_cache_freeP12kmem_cache_sPv+0x5c>
    80001a20:	00050493          	mv	s1,a0

    int indexOfObject = ((size_t)objp - sizeof(slab_t) - (size_t)slab) / slab->owner->obj_size;
    80001a24:	40a905b3          	sub	a1,s2,a0
    80001a28:	fb058593          	addi	a1,a1,-80
    80001a2c:	01053783          	ld	a5,16(a0)
    80001a30:	2307b783          	ld	a5,560(a5)
    80001a34:	02f5d5b3          	divu	a1,a1,a5
    80001a38:	0005859b          	sext.w	a1,a1
    if((size_t)objp != (size_t)slab + sizeof(slab_t) + indexOfObject*slab->owner->obj_size) //address not allocated, random address
    80001a3c:	02b787b3          	mul	a5,a5,a1
    80001a40:	00f507b3          	add	a5,a0,a5
    80001a44:	05078793          	addi	a5,a5,80
    80001a48:	02f90063          	beq	s2,a5,80001a68 <_Z15kmem_cache_freeP12kmem_cache_sPv+0x78>
    if(slab->numOfObjects == slab->numOfAllocatedObjects)
        removeFullSlab(cachep, slab);
    else if(slab->numOfAllocatedObjects == 1)
        removePartialSlab(cachep, slab);
    slab->numOfAllocatedObjects--;
}
    80001a4c:	02813083          	ld	ra,40(sp)
    80001a50:	02013403          	ld	s0,32(sp)
    80001a54:	01813483          	ld	s1,24(sp)
    80001a58:	01013903          	ld	s2,16(sp)
    80001a5c:	00813983          	ld	s3,8(sp)
    80001a60:	03010113          	addi	sp,sp,48
    80001a64:	00008067          	ret
    resetAllocatedIndex(slab, indexOfObject);
    80001a68:	00000097          	auipc	ra,0x0
    80001a6c:	bdc080e7          	jalr	-1060(ra) # 80001644 <_Z19resetAllocatedIndexP6slab_si>
    if(slab->numOfObjects == slab->numOfAllocatedObjects)
    80001a70:	0184b703          	ld	a4,24(s1)
    80001a74:	0204b783          	ld	a5,32(s1)
    80001a78:	00f70e63          	beq	a4,a5,80001a94 <_Z15kmem_cache_freeP12kmem_cache_sPv+0xa4>
    else if(slab->numOfAllocatedObjects == 1)
    80001a7c:	00100713          	li	a4,1
    80001a80:	02e78463          	beq	a5,a4,80001aa8 <_Z15kmem_cache_freeP12kmem_cache_sPv+0xb8>
    slab->numOfAllocatedObjects--;
    80001a84:	0204b783          	ld	a5,32(s1)
    80001a88:	fff78793          	addi	a5,a5,-1
    80001a8c:	02f4b023          	sd	a5,32(s1)
    80001a90:	fbdff06f          	j	80001a4c <_Z15kmem_cache_freeP12kmem_cache_sPv+0x5c>
        removeFullSlab(cachep, slab);
    80001a94:	00048593          	mv	a1,s1
    80001a98:	00098513          	mv	a0,s3
    80001a9c:	00000097          	auipc	ra,0x0
    80001aa0:	bf4080e7          	jalr	-1036(ra) # 80001690 <_Z14removeFullSlabP12kmem_cache_sP6slab_s>
    80001aa4:	fe1ff06f          	j	80001a84 <_Z15kmem_cache_freeP12kmem_cache_sPv+0x94>
        removePartialSlab(cachep, slab);
    80001aa8:	00048593          	mv	a1,s1
    80001aac:	00098513          	mv	a0,s3
    80001ab0:	00000097          	auipc	ra,0x0
    80001ab4:	c44080e7          	jalr	-956(ra) # 800016f4 <_Z17removePartialSlabP12kmem_cache_sP6slab_s>
    80001ab8:	fcdff06f          	j	80001a84 <_Z15kmem_cache_freeP12kmem_cache_sPv+0x94>

0000000080001abc <_Z15kmem_cache_infoP12kmem_cache_s>:

//TODO
//what needs to be printed
void kmem_cache_info(kmem_cache_t *cachep)
{
    80001abc:	fe010113          	addi	sp,sp,-32
    80001ac0:	00113c23          	sd	ra,24(sp)
    80001ac4:	00813823          	sd	s0,16(sp)
    80001ac8:	00913423          	sd	s1,8(sp)
    80001acc:	01213023          	sd	s2,0(sp)
    80001ad0:	02010413          	addi	s0,sp,32
    80001ad4:	00050913          	mv	s2,a0
    KConsole::trapPrintString("Kmem Cache Info-------------------\n");
    80001ad8:	00006517          	auipc	a0,0x6
    80001adc:	5a050513          	addi	a0,a0,1440 # 80008078 <CONSOLE_STATUS+0x68>
    80001ae0:	00001097          	auipc	ra,0x1
    80001ae4:	768080e7          	jalr	1896(ra) # 80003248 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Cache Name ");
    80001ae8:	00006517          	auipc	a0,0x6
    80001aec:	5b850513          	addi	a0,a0,1464 # 800080a0 <CONSOLE_STATUS+0x90>
    80001af0:	00001097          	auipc	ra,0x1
    80001af4:	758080e7          	jalr	1880(ra) # 80003248 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString(cachep->cacheName); KConsole::trapPrintString("\n");
    80001af8:	00090513          	mv	a0,s2
    80001afc:	00001097          	auipc	ra,0x1
    80001b00:	74c080e7          	jalr	1868(ra) # 80003248 <_ZN8KConsole15trapPrintStringEPKc>
    80001b04:	00007517          	auipc	a0,0x7
    80001b08:	afc50513          	addi	a0,a0,-1284 # 80008600 <CONSOLE_STATUS+0x5f0>
    80001b0c:	00001097          	auipc	ra,0x1
    80001b10:	73c080e7          	jalr	1852(ra) # 80003248 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Cache slab size in blocks ");
    80001b14:	00006517          	auipc	a0,0x6
    80001b18:	59c50513          	addi	a0,a0,1436 # 800080b0 <CONSOLE_STATUS+0xa0>
    80001b1c:	00001097          	auipc	ra,0x1
    80001b20:	72c080e7          	jalr	1836(ra) # 80003248 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintInt(cachep->slab_size); KConsole::trapPrintString("\n");
    80001b24:	00000613          	li	a2,0
    80001b28:	00a00593          	li	a1,10
    80001b2c:	22893503          	ld	a0,552(s2)
    80001b30:	00001097          	auipc	ra,0x1
    80001b34:	75c080e7          	jalr	1884(ra) # 8000328c <_ZN8KConsole12trapPrintIntEmii>
    80001b38:	00007517          	auipc	a0,0x7
    80001b3c:	ac850513          	addi	a0,a0,-1336 # 80008600 <CONSOLE_STATUS+0x5f0>
    80001b40:	00001097          	auipc	ra,0x1
    80001b44:	708080e7          	jalr	1800(ra) # 80003248 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Cache obj size in bytes ");
    80001b48:	00006517          	auipc	a0,0x6
    80001b4c:	58850513          	addi	a0,a0,1416 # 800080d0 <CONSOLE_STATUS+0xc0>
    80001b50:	00001097          	auipc	ra,0x1
    80001b54:	6f8080e7          	jalr	1784(ra) # 80003248 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintInt(cachep->obj_size); KConsole::trapPrintString("\n");
    80001b58:	00000613          	li	a2,0
    80001b5c:	00a00593          	li	a1,10
    80001b60:	23093503          	ld	a0,560(s2)
    80001b64:	00001097          	auipc	ra,0x1
    80001b68:	728080e7          	jalr	1832(ra) # 8000328c <_ZN8KConsole12trapPrintIntEmii>
    80001b6c:	00007517          	auipc	a0,0x7
    80001b70:	a9450513          	addi	a0,a0,-1388 # 80008600 <CONSOLE_STATUS+0x5f0>
    80001b74:	00001097          	auipc	ra,0x1
    80001b78:	6d4080e7          	jalr	1748(ra) # 80003248 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Slabs info----\n");
    80001b7c:	00006517          	auipc	a0,0x6
    80001b80:	57450513          	addi	a0,a0,1396 # 800080f0 <CONSOLE_STATUS+0xe0>
    80001b84:	00001097          	auipc	ra,0x1
    80001b88:	6c4080e7          	jalr	1732(ra) # 80003248 <_ZN8KConsole15trapPrintStringEPKc>

    KConsole::trapPrintString("Full slabs\n");
    80001b8c:	00006517          	auipc	a0,0x6
    80001b90:	57450513          	addi	a0,a0,1396 # 80008100 <CONSOLE_STATUS+0xf0>
    80001b94:	00001097          	auipc	ra,0x1
    80001b98:	6b4080e7          	jalr	1716(ra) # 80003248 <_ZN8KConsole15trapPrintStringEPKc>
    slab_t* slab = cachep->slabs_full;
    80001b9c:	21893483          	ld	s1,536(s2)
    while(slab != nullptr)
    80001ba0:	00048c63          	beqz	s1,80001bb8 <_Z15kmem_cache_infoP12kmem_cache_s+0xfc>
    {
        printSlabInfo(slab);
    80001ba4:	00048513          	mv	a0,s1
    80001ba8:	00000097          	auipc	ra,0x0
    80001bac:	bb0080e7          	jalr	-1104(ra) # 80001758 <_Z13printSlabInfoP6slab_s>
        slab = slab->next;
    80001bb0:	0084b483          	ld	s1,8(s1)
    while(slab != nullptr)
    80001bb4:	fedff06f          	j	80001ba0 <_Z15kmem_cache_infoP12kmem_cache_s+0xe4>
    }

    KConsole::trapPrintString("Partial slabs\n");
    80001bb8:	00006517          	auipc	a0,0x6
    80001bbc:	55850513          	addi	a0,a0,1368 # 80008110 <CONSOLE_STATUS+0x100>
    80001bc0:	00001097          	auipc	ra,0x1
    80001bc4:	688080e7          	jalr	1672(ra) # 80003248 <_ZN8KConsole15trapPrintStringEPKc>
    slab = cachep->slabs_partial;
    80001bc8:	22093483          	ld	s1,544(s2)
    while(slab != nullptr)
    80001bcc:	00048c63          	beqz	s1,80001be4 <_Z15kmem_cache_infoP12kmem_cache_s+0x128>
    {
        printSlabInfo(slab);
    80001bd0:	00048513          	mv	a0,s1
    80001bd4:	00000097          	auipc	ra,0x0
    80001bd8:	b84080e7          	jalr	-1148(ra) # 80001758 <_Z13printSlabInfoP6slab_s>
        slab = slab->next;
    80001bdc:	0084b483          	ld	s1,8(s1)
    while(slab != nullptr)
    80001be0:	fedff06f          	j	80001bcc <_Z15kmem_cache_infoP12kmem_cache_s+0x110>
    }

    KConsole::trapPrintString("Empty slabs\n");
    80001be4:	00006517          	auipc	a0,0x6
    80001be8:	53c50513          	addi	a0,a0,1340 # 80008120 <CONSOLE_STATUS+0x110>
    80001bec:	00001097          	auipc	ra,0x1
    80001bf0:	65c080e7          	jalr	1628(ra) # 80003248 <_ZN8KConsole15trapPrintStringEPKc>
    slab = cachep->slabs_empty;
    80001bf4:	21093483          	ld	s1,528(s2)
    while(slab != nullptr)
    80001bf8:	00048c63          	beqz	s1,80001c10 <_Z15kmem_cache_infoP12kmem_cache_s+0x154>
    {
        printSlabInfo(slab);
    80001bfc:	00048513          	mv	a0,s1
    80001c00:	00000097          	auipc	ra,0x0
    80001c04:	b58080e7          	jalr	-1192(ra) # 80001758 <_Z13printSlabInfoP6slab_s>
        slab = slab->next;
    80001c08:	0084b483          	ld	s1,8(s1)
    while(slab != nullptr)
    80001c0c:	fedff06f          	j	80001bf8 <_Z15kmem_cache_infoP12kmem_cache_s+0x13c>
    }
}
    80001c10:	01813083          	ld	ra,24(sp)
    80001c14:	01013403          	ld	s0,16(sp)
    80001c18:	00813483          	ld	s1,8(sp)
    80001c1c:	00013903          	ld	s2,0(sp)
    80001c20:	02010113          	addi	sp,sp,32
    80001c24:	00008067          	ret

0000000080001c28 <_Z9mem_allocm>:
//

#include "../h/syscall_c.hpp"

void* mem_alloc(size_t size)
{
    80001c28:	ff010113          	addi	sp,sp,-16
    80001c2c:	00813423          	sd	s0,8(sp)
    80001c30:	01010413          	addi	s0,sp,16
    //prepare for system call
    uint64 numBlocks = (size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80001c34:	03f50513          	addi	a0,a0,63
    80001c38:	00655513          	srli	a0,a0,0x6
    __asm__ volatile("mv a1, %0" :  : "r"(numBlocks));
    80001c3c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 1");
    80001c40:	00100513          	li	a0,1

    __asm__ volatile("ecall"); // system call
    80001c44:	00000073          	ecall

    //get the address
    uint64 allocatedAddr = 0x01;
    __asm__ volatile("mv %0, a0" : "=r"(allocatedAddr));
    80001c48:	00050513          	mv	a0,a0

    return (void*)allocatedAddr;
}
    80001c4c:	00813403          	ld	s0,8(sp)
    80001c50:	01010113          	addi	sp,sp,16
    80001c54:	00008067          	ret

0000000080001c58 <_Z8mem_freePv>:

int mem_free(void* p)
{
    80001c58:	ff010113          	addi	sp,sp,-16
    80001c5c:	00813423          	sd	s0,8(sp)
    80001c60:	01010413          	addi	s0,sp,16
    //prepare for system call
    uint64 addrFree = (uint64)p;
    __asm__ volatile("mv a1, %0" :  : "r"(addrFree));
    80001c64:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 2");
    80001c68:	00200513          	li	a0,2

    __asm__ volatile("ecall"); // system call
    80001c6c:	00000073          	ecall

    //get the result of system call
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001c70:	00050513          	mv	a0,a0

    return result;
}
    80001c74:	0005051b          	sext.w	a0,a0
    80001c78:	00813403          	ld	s0,8(sp)
    80001c7c:	01010113          	addi	sp,sp,16
    80001c80:	00008067          	ret

0000000080001c84 <_Z13thread_createPP7_threadPFvPvES2_>:

int thread_create(thread_t* handle, void (*start_routine)(void*), void* args)
{
    80001c84:	fd010113          	addi	sp,sp,-48
    80001c88:	02113423          	sd	ra,40(sp)
    80001c8c:	02813023          	sd	s0,32(sp)
    80001c90:	00913c23          	sd	s1,24(sp)
    80001c94:	01213823          	sd	s2,16(sp)
    80001c98:	01313423          	sd	s3,8(sp)
    80001c9c:	03010413          	addi	s0,sp,48
    80001ca0:	00050493          	mv	s1,a0
    80001ca4:	00058913          	mv	s2,a1
    80001ca8:	00060993          	mv	s3,a2
    uint64 handleLocal = (uint64)handle;
    uint64 startRLocal = (uint64)start_routine;
    uint64 argsLocal = (uint64)args;
    uint64 opLocal = 0x11;

    void * stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    80001cac:	00001537          	lui	a0,0x1
    80001cb0:	00000097          	auipc	ra,0x0
    80001cb4:	f78080e7          	jalr	-136(ra) # 80001c28 <_Z9mem_allocm>
    uint64 stackPointerLocal = (uint64)stack_space;
    //todo
    //handle this error
    if(stack_space == 0)
    80001cb8:	04050263          	beqz	a0,80001cfc <_Z13thread_createPP7_threadPFvPvES2_+0x78>
        return -1;

    //initialize registers
    __asm__ volatile("mv a4, %0" :  : "r"((uint64)stackPointerLocal));
    80001cbc:	00050713          	mv	a4,a0
    __asm__ volatile("mv a3, %0" :  : "r"((uint64)argsLocal));
    80001cc0:	00098693          	mv	a3,s3
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)startRLocal));
    80001cc4:	00090613          	mv	a2,s2
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handleLocal));
    80001cc8:	00048593          	mv	a1,s1
    __asm__ volatile("mv a0, %0" :  : "r"((uint64)opLocal));
    80001ccc:	01100793          	li	a5,17
    80001cd0:	00078513          	mv	a0,a5


    __asm__ volatile("ecall");
    80001cd4:	00000073          	ecall

    //get the result
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001cd8:	00050513          	mv	a0,a0

    return result;
    80001cdc:	0005051b          	sext.w	a0,a0
}
    80001ce0:	02813083          	ld	ra,40(sp)
    80001ce4:	02013403          	ld	s0,32(sp)
    80001ce8:	01813483          	ld	s1,24(sp)
    80001cec:	01013903          	ld	s2,16(sp)
    80001cf0:	00813983          	ld	s3,8(sp)
    80001cf4:	03010113          	addi	sp,sp,48
    80001cf8:	00008067          	ret
        return -1;
    80001cfc:	fff00513          	li	a0,-1
    80001d00:	fe1ff06f          	j	80001ce0 <_Z13thread_createPP7_threadPFvPvES2_+0x5c>

0000000080001d04 <_Z15thread_dispatchv>:

void thread_dispatch()
{
    80001d04:	ff010113          	addi	sp,sp,-16
    80001d08:	00813423          	sd	s0,8(sp)
    80001d0c:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    80001d10:	01300513          	li	a0,19
    __asm__ volatile("ecall");
    80001d14:	00000073          	ecall
}
    80001d18:	00813403          	ld	s0,8(sp)
    80001d1c:	01010113          	addi	sp,sp,16
    80001d20:	00008067          	ret

0000000080001d24 <_Z11thread_exitv>:

int thread_exit()
{
    80001d24:	ff010113          	addi	sp,sp,-16
    80001d28:	00813423          	sd	s0,8(sp)
    80001d2c:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x12");
    80001d30:	01200513          	li	a0,18

    __asm__ volatile("ecall");
    80001d34:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001d38:	00050513          	mv	a0,a0
    return result;
}
    80001d3c:	0005051b          	sext.w	a0,a0
    80001d40:	00813403          	ld	s0,8(sp)
    80001d44:	01010113          	addi	sp,sp,16
    80001d48:	00008067          	ret

0000000080001d4c <_Z8sem_openPP4_semj>:

int sem_open(sem_t* handle, unsigned int x)
{
    80001d4c:	ff010113          	addi	sp,sp,-16
    80001d50:	00813423          	sd	s0,8(sp)
    80001d54:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)x));
    80001d58:	02059593          	slli	a1,a1,0x20
    80001d5c:	0205d593          	srli	a1,a1,0x20
    80001d60:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    80001d64:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x21");
    80001d68:	02100513          	li	a0,33

    __asm__ volatile("ecall");
    80001d6c:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001d70:	00050513          	mv	a0,a0
    return result;
}
    80001d74:	0005051b          	sext.w	a0,a0
    80001d78:	00813403          	ld	s0,8(sp)
    80001d7c:	01010113          	addi	sp,sp,16
    80001d80:	00008067          	ret

0000000080001d84 <_Z9sem_closeP4_sem>:


int sem_close(sem_t handle)
{
    80001d84:	ff010113          	addi	sp,sp,-16
    80001d88:	00813423          	sd	s0,8(sp)
    80001d8c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    80001d90:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x22");
    80001d94:	02200513          	li	a0,34

    __asm__ volatile("ecall");
    80001d98:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001d9c:	00050513          	mv	a0,a0
    return result;
}
    80001da0:	0005051b          	sext.w	a0,a0
    80001da4:	00813403          	ld	s0,8(sp)
    80001da8:	01010113          	addi	sp,sp,16
    80001dac:	00008067          	ret

0000000080001db0 <_Z8sem_waitP4_sem>:

int sem_wait(sem_t id)
{
    80001db0:	ff010113          	addi	sp,sp,-16
    80001db4:	00813423          	sd	s0,8(sp)
    80001db8:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)id));
    80001dbc:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x23");
    80001dc0:	02300513          	li	a0,35

    __asm__ volatile("ecall");
    80001dc4:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001dc8:	00050513          	mv	a0,a0
    return result;
}
    80001dcc:	0005051b          	sext.w	a0,a0
    80001dd0:	00813403          	ld	s0,8(sp)
    80001dd4:	01010113          	addi	sp,sp,16
    80001dd8:	00008067          	ret

0000000080001ddc <_Z10sem_signalP4_sem>:

int sem_signal(sem_t id)
{
    80001ddc:	ff010113          	addi	sp,sp,-16
    80001de0:	00813423          	sd	s0,8(sp)
    80001de4:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)id));
    80001de8:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x24");
    80001dec:	02400513          	li	a0,36

    __asm__ volatile("ecall");
    80001df0:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001df4:	00050513          	mv	a0,a0
    return result;
}
    80001df8:	0005051b          	sext.w	a0,a0
    80001dfc:	00813403          	ld	s0,8(sp)
    80001e00:	01010113          	addi	sp,sp,16
    80001e04:	00008067          	ret

0000000080001e08 <_Z10time_sleepm>:

int time_sleep(uint64 time)
{
    80001e08:	ff010113          	addi	sp,sp,-16
    80001e0c:	00813423          	sd	s0,8(sp)
    80001e10:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)time));
    80001e14:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x31");
    80001e18:	03100513          	li	a0,49

    __asm__ volatile("ecall");
    80001e1c:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001e20:	00050513          	mv	a0,a0
    return result;
}
    80001e24:	0005051b          	sext.w	a0,a0
    80001e28:	00813403          	ld	s0,8(sp)
    80001e2c:	01010113          	addi	sp,sp,16
    80001e30:	00008067          	ret

0000000080001e34 <_Z12thread_startPv>:

int thread_start(void* p)
{
    80001e34:	ff010113          	addi	sp,sp,-16
    80001e38:	00813423          	sd	s0,8(sp)
    80001e3c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)p));
    80001e40:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x15");
    80001e44:	01500513          	li	a0,21

    __asm__ volatile("ecall");
    80001e48:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001e4c:	00050513          	mv	a0,a0
    return result;
}
    80001e50:	0005051b          	sext.w	a0,a0
    80001e54:	00813403          	ld	s0,8(sp)
    80001e58:	01010113          	addi	sp,sp,16
    80001e5c:	00008067          	ret

0000000080001e60 <_Z15thread_make_pcbPP7_threadPFvPvES2_>:

int thread_make_pcb(thread_t* handle, void(*start_routine)(void*), void *arg)
{
    80001e60:	fd010113          	addi	sp,sp,-48
    80001e64:	02113423          	sd	ra,40(sp)
    80001e68:	02813023          	sd	s0,32(sp)
    80001e6c:	00913c23          	sd	s1,24(sp)
    80001e70:	01213823          	sd	s2,16(sp)
    80001e74:	01313423          	sd	s3,8(sp)
    80001e78:	03010413          	addi	s0,sp,48
    80001e7c:	00050493          	mv	s1,a0
    80001e80:	00058913          	mv	s2,a1
    80001e84:	00060993          	mv	s3,a2
    uint64 handleLocal = (uint64)handle;
    uint64 startRLocal = (uint64)start_routine;
    uint64 argsLocal = (uint64)arg;
    uint64 opLocal = 0x14;

    void * stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    80001e88:	00001537          	lui	a0,0x1
    80001e8c:	00000097          	auipc	ra,0x0
    80001e90:	d9c080e7          	jalr	-612(ra) # 80001c28 <_Z9mem_allocm>
    uint64 stackPointerLocal = (uint64)stack_space;
    if(stack_space == 0)
    80001e94:	04050263          	beqz	a0,80001ed8 <_Z15thread_make_pcbPP7_threadPFvPvES2_+0x78>
        return -1;

    //initialize registers
    __asm__ volatile("mv a4, %0" :  : "r"((uint64)stackPointerLocal));
    80001e98:	00050713          	mv	a4,a0
    __asm__ volatile("mv a3, %0" :  : "r"((uint64)argsLocal));
    80001e9c:	00098693          	mv	a3,s3
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)startRLocal));
    80001ea0:	00090613          	mv	a2,s2
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handleLocal));
    80001ea4:	00048593          	mv	a1,s1
    __asm__ volatile("mv a0, %0" :  : "r"((uint64)opLocal));
    80001ea8:	01400793          	li	a5,20
    80001eac:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    80001eb0:	00000073          	ecall

    //get the result
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001eb4:	00050513          	mv	a0,a0
    return result;
    80001eb8:	0005051b          	sext.w	a0,a0
}
    80001ebc:	02813083          	ld	ra,40(sp)
    80001ec0:	02013403          	ld	s0,32(sp)
    80001ec4:	01813483          	ld	s1,24(sp)
    80001ec8:	01013903          	ld	s2,16(sp)
    80001ecc:	00813983          	ld	s3,8(sp)
    80001ed0:	03010113          	addi	sp,sp,48
    80001ed4:	00008067          	ret
        return -1;
    80001ed8:	fff00513          	li	a0,-1
    80001edc:	fe1ff06f          	j	80001ebc <_Z15thread_make_pcbPP7_threadPFvPvES2_+0x5c>

0000000080001ee0 <_Z4getcv>:

char getc()
{
    80001ee0:	ff010113          	addi	sp,sp,-16
    80001ee4:	00813423          	sd	s0,8(sp)
    80001ee8:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x41");
    80001eec:	04100513          	li	a0,65

    __asm__ volatile("ecall");
    80001ef0:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001ef4:	00050513          	mv	a0,a0
    return (char)result;
}
    80001ef8:	0ff57513          	andi	a0,a0,255
    80001efc:	00813403          	ld	s0,8(sp)
    80001f00:	01010113          	addi	sp,sp,16
    80001f04:	00008067          	ret

0000000080001f08 <_Z4putcc>:

void putc(char c)
{
    80001f08:	ff010113          	addi	sp,sp,-16
    80001f0c:	00813423          	sd	s0,8(sp)
    80001f10:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)c));
    80001f14:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x42");
    80001f18:	04200513          	li	a0,66
    __asm__ volatile("ecall");
    80001f1c:	00000073          	ecall
}
    80001f20:	00813403          	ld	s0,8(sp)
    80001f24:	01010113          	addi	sp,sp,16
    80001f28:	00008067          	ret

0000000080001f2c <_Z20sysCallGetCharOutputv>:

char sysCallGetCharOutput()
{
    80001f2c:	ff010113          	addi	sp,sp,-16
    80001f30:	00813423          	sd	s0,8(sp)
    80001f34:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x43");
    80001f38:	04300513          	li	a0,67

    __asm__ volatile("ecall");
    80001f3c:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001f40:	00050513          	mv	a0,a0
    return (char)result;
}
    80001f44:	0ff57513          	andi	a0,a0,255
    80001f48:	00813403          	ld	s0,8(sp)
    80001f4c:	01010113          	addi	sp,sp,16
    80001f50:	00008067          	ret

0000000080001f54 <_Z17thread_delete_pcbP7_thread>:

int thread_delete_pcb(thread_t handle)
{
    80001f54:	ff010113          	addi	sp,sp,-16
    80001f58:	00813423          	sd	s0,8(sp)
    80001f5c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    80001f60:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x16");
    80001f64:	01600513          	li	a0,22
    __asm__ volatile("ecall");
    80001f68:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001f6c:	00050513          	mv	a0,a0
    return (char)result;
}
    80001f70:	0ff57513          	andi	a0,a0,255
    80001f74:	00813403          	ld	s0,8(sp)
    80001f78:	01010113          	addi	sp,sp,16
    80001f7c:	00008067          	ret

0000000080001f80 <_ZN7_threaddlEPv>:
//

#include "../h/_thread.hpp"
#include "../h/syscall_c.hpp"

void _thread::operator delete(void *p) {
    80001f80:	ff010113          	addi	sp,sp,-16
    80001f84:	00113423          	sd	ra,8(sp)
    80001f88:	00813023          	sd	s0,0(sp)
    80001f8c:	01010413          	addi	s0,sp,16
    thread_delete_pcb((thread_t)p);
    80001f90:	00000097          	auipc	ra,0x0
    80001f94:	fc4080e7          	jalr	-60(ra) # 80001f54 <_Z17thread_delete_pcbP7_thread>
    80001f98:	00813083          	ld	ra,8(sp)
    80001f9c:	00013403          	ld	s0,0(sp)
    80001fa0:	01010113          	addi	sp,sp,16
    80001fa4:	00008067          	ret

0000000080001fa8 <_ZN3PCB6runnerEv>:
{
    Scheduler::put(this);
}

void PCB::runner()
{
    80001fa8:	ff010113          	addi	sp,sp,-16
    80001fac:	00113423          	sd	ra,8(sp)
    80001fb0:	00813023          	sd	s0,0(sp)
    80001fb4:	01010413          	addi	s0,sp,16
    Riscv::popSppSpie();
    80001fb8:	00002097          	auipc	ra,0x2
    80001fbc:	d34080e7          	jalr	-716(ra) # 80003cec <_ZN5Riscv10popSppSpieEv>
    running->body(running->args);
    80001fc0:	00008797          	auipc	a5,0x8
    80001fc4:	6087b783          	ld	a5,1544(a5) # 8000a5c8 <_ZN3PCB7runningE>
    80001fc8:	0287b703          	ld	a4,40(a5)
    80001fcc:	0307b503          	ld	a0,48(a5)
    80001fd0:	000700e7          	jalr	a4

    thread_exit();
    80001fd4:	00000097          	auipc	ra,0x0
    80001fd8:	d50080e7          	jalr	-688(ra) # 80001d24 <_Z11thread_exitv>
}
    80001fdc:	00813083          	ld	ra,8(sp)
    80001fe0:	00013403          	ld	s0,0(sp)
    80001fe4:	01010113          	addi	sp,sp,16
    80001fe8:	00008067          	ret

0000000080001fec <_ZN3PCBC1EPFvPvES0_S0_m>:
PCB::PCB(Body body, void *args, void* stack_space, uint64 timeSlice) :
    80001fec:	ff010113          	addi	sp,sp,-16
    80001ff0:	00813423          	sd	s0,8(sp)
    80001ff4:	01010413          	addi	s0,sp,16
    })
    80001ff8:	00050023          	sb	zero,0(a0) # 1000 <_entry-0x7ffff000>
    80001ffc:	00e53c23          	sd	a4,24(a0)
    80002000:	02053023          	sd	zero,32(a0)
    80002004:	02b53423          	sd	a1,40(a0)
    80002008:	02c53823          	sd	a2,48(a0)
    8000200c:	02d53c23          	sd	a3,56(a0)
        (uint64)((char*)stack_space + DEFAULT_STACK_SIZE),
    80002010:	000017b7          	lui	a5,0x1
    80002014:	00f686b3          	add	a3,a3,a5
    })
    80002018:	04d53423          	sd	a3,72(a0)
    8000201c:	00000797          	auipc	a5,0x0
    80002020:	f8c78793          	addi	a5,a5,-116 # 80001fa8 <_ZN3PCB6runnerEv>
    80002024:	04f53823          	sd	a5,80(a0)
    80002028:	04050c23          	sb	zero,88(a0)
    nextPCB = 0;
    8000202c:	00053423          	sd	zero,8(a0)
}
    80002030:	00813403          	ld	s0,8(sp)
    80002034:	01010113          	addi	sp,sp,16
    80002038:	00008067          	ret

000000008000203c <_ZN3PCB5startEv>:
{
    8000203c:	ff010113          	addi	sp,sp,-16
    80002040:	00113423          	sd	ra,8(sp)
    80002044:	00813023          	sd	s0,0(sp)
    80002048:	01010413          	addi	s0,sp,16
    Scheduler::put(this);
    8000204c:	00001097          	auipc	ra,0x1
    80002050:	450080e7          	jalr	1104(ra) # 8000349c <_ZN9Scheduler3putEP3PCB>
}
    80002054:	00813083          	ld	ra,8(sp)
    80002058:	00013403          	ld	s0,0(sp)
    8000205c:	01010113          	addi	sp,sp,16
    80002060:	00008067          	ret

0000000080002064 <_ZN3PCB8dispatchEv>:

void PCB::dispatch()
{
    80002064:	fe010113          	addi	sp,sp,-32
    80002068:	00113c23          	sd	ra,24(sp)
    8000206c:	00813823          	sd	s0,16(sp)
    80002070:	00913423          	sd	s1,8(sp)
    80002074:	01213023          	sd	s2,0(sp)
    80002078:	02010413          	addi	s0,sp,32
    PCB* old = running;
    8000207c:	00008497          	auipc	s1,0x8
    80002080:	54c4b483          	ld	s1,1356(s1) # 8000a5c8 <_ZN3PCB7runningE>

    void* operator new(size_t size);
    void operator delete(void *p);

    enum State{READY, RUNNING, SUSPENDED, FINISHED, EXITING, SLEEPING};
    State getState() {return state;}
    80002084:	0404a703          	lw	a4,64(s1)
    if(old->getState() == PCB::RUNNING)
    80002088:	00100793          	li	a5,1
    8000208c:	04f70a63          	beq	a4,a5,800020e0 <_ZN3PCB8dispatchEv+0x7c>
        Scheduler::put(old);
    PCB::running = Scheduler::get();
    80002090:	00001097          	auipc	ra,0x1
    80002094:	460080e7          	jalr	1120(ra) # 800034f0 <_ZN9Scheduler3getEv>
    80002098:	00008917          	auipc	s2,0x8
    8000209c:	53090913          	addi	s2,s2,1328 # 8000a5c8 <_ZN3PCB7runningE>
    800020a0:	00a93023          	sd	a0,0(s2)
    void setState(State s) {state = s;}
    800020a4:	00100793          	li	a5,1
    800020a8:	04f52023          	sw	a5,64(a0)
    PCB::running->setState(PCB::RUNNING);

    Riscv::changePrivMode();
    800020ac:	00002097          	auipc	ra,0x2
    800020b0:	d34080e7          	jalr	-716(ra) # 80003de0 <_ZN5Riscv14changePrivModeEv>

    PCB::contextSwitch(&old->context, &running->context);
    800020b4:	00093583          	ld	a1,0(s2)
    800020b8:	04858593          	addi	a1,a1,72
    800020bc:	04848513          	addi	a0,s1,72
    800020c0:	fffff097          	auipc	ra,0xfffff
    800020c4:	178080e7          	jalr	376(ra) # 80001238 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>
}
    800020c8:	01813083          	ld	ra,24(sp)
    800020cc:	01013403          	ld	s0,16(sp)
    800020d0:	00813483          	ld	s1,8(sp)
    800020d4:	00013903          	ld	s2,0(sp)
    800020d8:	02010113          	addi	sp,sp,32
    800020dc:	00008067          	ret
        Scheduler::put(old);
    800020e0:	00048513          	mv	a0,s1
    800020e4:	00001097          	auipc	ra,0x1
    800020e8:	3b8080e7          	jalr	952(ra) # 8000349c <_ZN9Scheduler3putEP3PCB>
    800020ec:	fa5ff06f          	j	80002090 <_ZN3PCB8dispatchEv+0x2c>

00000000800020f0 <_ZN3PCBnwEm>:

void *PCB::operator new(size_t size) {
    800020f0:	ff010113          	addi	sp,sp,-16
    800020f4:	00113423          	sd	ra,8(sp)
    800020f8:	00813023          	sd	s0,0(sp)
    800020fc:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmalloc(size);
    80002100:	00002097          	auipc	ra,0x2
    80002104:	418080e7          	jalr	1048(ra) # 80004518 <_ZN15MemoryAllocator7kmallocEm>
}
    80002108:	00813083          	ld	ra,8(sp)
    8000210c:	00013403          	ld	s0,0(sp)
    80002110:	01010113          	addi	sp,sp,16
    80002114:	00008067          	ret

0000000080002118 <_ZN3PCBdlEPv>:

void PCB::operator delete(void *p) {
    80002118:	ff010113          	addi	sp,sp,-16
    8000211c:	00113423          	sd	ra,8(sp)
    80002120:	00813023          	sd	s0,0(sp)
    80002124:	01010413          	addi	s0,sp,16
    MemoryAllocator::kfree(p);
    80002128:	00002097          	auipc	ra,0x2
    8000212c:	454080e7          	jalr	1108(ra) # 8000457c <_ZN15MemoryAllocator5kfreeEPv>
}
    80002130:	00813083          	ld	ra,8(sp)
    80002134:	00013403          	ld	s0,0(sp)
    80002138:	01010113          	addi	sp,sp,16
    8000213c:	00008067          	ret

0000000080002140 <_ZN3PCBD1Ev>:

PCB::~PCB()
    80002140:	ff010113          	addi	sp,sp,-16
    80002144:	00113423          	sd	ra,8(sp)
    80002148:	00813023          	sd	s0,0(sp)
    8000214c:	01010413          	addi	s0,sp,16
{
    MemoryAllocator::kfree(beginSP);
    80002150:	03853503          	ld	a0,56(a0)
    80002154:	00002097          	auipc	ra,0x2
    80002158:	428080e7          	jalr	1064(ra) # 8000457c <_ZN15MemoryAllocator5kfreeEPv>
}
    8000215c:	00813083          	ld	ra,8(sp)
    80002160:	00013403          	ld	s0,0(sp)
    80002164:	01010113          	addi	sp,sp,16
    80002168:	00008067          	ret

000000008000216c <_ZN3PCB10initializeEv>:

void PCB::initialize()
{
    8000216c:	fd010113          	addi	sp,sp,-48
    80002170:	02113423          	sd	ra,40(sp)
    80002174:	02813023          	sd	s0,32(sp)
    80002178:	00913c23          	sd	s1,24(sp)
    8000217c:	01213823          	sd	s2,16(sp)
    80002180:	01313423          	sd	s3,8(sp)
    80002184:	01413023          	sd	s4,0(sp)
    80002188:	03010413          	addi	s0,sp,48
    PCB* mainSystem = new PCB(0, 0, 0, 0);
    8000218c:	06000513          	li	a0,96
    80002190:	00000097          	auipc	ra,0x0
    80002194:	f60080e7          	jalr	-160(ra) # 800020f0 <_ZN3PCBnwEm>
    80002198:	00050493          	mv	s1,a0
    8000219c:	00000713          	li	a4,0
    800021a0:	00000693          	li	a3,0
    800021a4:	00000613          	li	a2,0
    800021a8:	00000593          	li	a1,0
    800021ac:	00000097          	auipc	ra,0x0
    800021b0:	e40080e7          	jalr	-448(ra) # 80001fec <_ZN3PCBC1EPFvPvES0_S0_m>
    mainSystem->systemThread = true;
    800021b4:	00100793          	li	a5,1
    800021b8:	00f48023          	sb	a5,0(s1)
    PCB::running = mainSystem;
    800021bc:	00008917          	auipc	s2,0x8
    800021c0:	40c90913          	addi	s2,s2,1036 # 8000a5c8 <_ZN3PCB7runningE>
    800021c4:	00993023          	sd	s1,0(s2)
    800021c8:	00100a13          	li	s4,1
    800021cc:	0544a023          	sw	s4,64(s1)
    PCB::running->setState(PCB::RUNNING);
    PCB::consolePCB = new PCB(&KConsole::sendCharactersToConsole, 0, MemoryAllocator::kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    800021d0:	00001537          	lui	a0,0x1
    800021d4:	00002097          	auipc	ra,0x2
    800021d8:	344080e7          	jalr	836(ra) # 80004518 <_ZN15MemoryAllocator7kmallocEm>
    800021dc:	00050993          	mv	s3,a0
    800021e0:	06000513          	li	a0,96
    800021e4:	00000097          	auipc	ra,0x0
    800021e8:	f0c080e7          	jalr	-244(ra) # 800020f0 <_ZN3PCBnwEm>
    800021ec:	00050493          	mv	s1,a0
    800021f0:	00200713          	li	a4,2
    800021f4:	00098693          	mv	a3,s3
    800021f8:	00000613          	li	a2,0
    800021fc:	00008597          	auipc	a1,0x8
    80002200:	34c5b583          	ld	a1,844(a1) # 8000a548 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002204:	00000097          	auipc	ra,0x0
    80002208:	de8080e7          	jalr	-536(ra) # 80001fec <_ZN3PCBC1EPFvPvES0_S0_m>
    8000220c:	00993423          	sd	s1,8(s2)
    PCB::consolePCB->systemThread = true;
    80002210:	01448023          	sb	s4,0(s1)
    PCB::consolePCB->start();
    80002214:	00893503          	ld	a0,8(s2)
    80002218:	00000097          	auipc	ra,0x0
    8000221c:	e24080e7          	jalr	-476(ra) # 8000203c <_ZN3PCB5startEv>
    PCB::userPCB = new PCB(&Riscv::userMainWrapper, 0, MemoryAllocator::kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    80002220:	00001537          	lui	a0,0x1
    80002224:	00002097          	auipc	ra,0x2
    80002228:	2f4080e7          	jalr	756(ra) # 80004518 <_ZN15MemoryAllocator7kmallocEm>
    8000222c:	00050993          	mv	s3,a0
    80002230:	06000513          	li	a0,96
    80002234:	00000097          	auipc	ra,0x0
    80002238:	ebc080e7          	jalr	-324(ra) # 800020f0 <_ZN3PCBnwEm>
    8000223c:	00050493          	mv	s1,a0
    80002240:	00200713          	li	a4,2
    80002244:	00098693          	mv	a3,s3
    80002248:	00000613          	li	a2,0
    8000224c:	00008597          	auipc	a1,0x8
    80002250:	3245b583          	ld	a1,804(a1) # 8000a570 <_GLOBAL_OFFSET_TABLE_+0x78>
    80002254:	00000097          	auipc	ra,0x0
    80002258:	d98080e7          	jalr	-616(ra) # 80001fec <_ZN3PCBC1EPFvPvES0_S0_m>
    8000225c:	00993823          	sd	s1,16(s2)
    PCB::userPCB->start();
    80002260:	00048513          	mv	a0,s1
    80002264:	00000097          	auipc	ra,0x0
    80002268:	dd8080e7          	jalr	-552(ra) # 8000203c <_ZN3PCB5startEv>
}
    8000226c:	02813083          	ld	ra,40(sp)
    80002270:	02013403          	ld	s0,32(sp)
    80002274:	01813483          	ld	s1,24(sp)
    80002278:	01013903          	ld	s2,16(sp)
    8000227c:	00813983          	ld	s3,8(sp)
    80002280:	00013a03          	ld	s4,0(sp)
    80002284:	03010113          	addi	sp,sp,48
    80002288:	00008067          	ret

000000008000228c <_ZN3PCB10isFinishedEv>:

bool PCB::isFinished()
{
    8000228c:	ff010113          	addi	sp,sp,-16
    80002290:	00813423          	sd	s0,8(sp)
    80002294:	01010413          	addi	s0,sp,16
    return state == PCB::FINISHED;
    80002298:	04052503          	lw	a0,64(a0) # 1040 <_entry-0x7fffefc0>
    8000229c:	ffd50513          	addi	a0,a0,-3
}
    800022a0:	00153513          	seqz	a0,a0
    800022a4:	00813403          	ld	s0,8(sp)
    800022a8:	01010113          	addi	sp,sp,16
    800022ac:	00008067          	ret

00000000800022b0 <_ZN3PCB17threadExitHandlerEv>:

void PCB::threadExitHandler()
{
    800022b0:	ff010113          	addi	sp,sp,-16
    800022b4:	00113423          	sd	ra,8(sp)
    800022b8:	00813023          	sd	s0,0(sp)
    800022bc:	01010413          	addi	s0,sp,16
    PCB::timeSliceCounter = 0;
    800022c0:	00008797          	auipc	a5,0x8
    800022c4:	30878793          	addi	a5,a5,776 # 8000a5c8 <_ZN3PCB7runningE>
    800022c8:	0007bc23          	sd	zero,24(a5)
    PCB::running->setState(PCB::FINISHED);
    800022cc:	0007b783          	ld	a5,0(a5)
    800022d0:	00300713          	li	a4,3
    800022d4:	04e7a023          	sw	a4,64(a5)
    PCB::dispatch();
    800022d8:	00000097          	auipc	ra,0x0
    800022dc:	d8c080e7          	jalr	-628(ra) # 80002064 <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0");
    800022e0:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    800022e4:	00002097          	auipc	ra,0x2
    800022e8:	ac4080e7          	jalr	-1340(ra) # 80003da8 <_ZN5Riscv13w_a0_sscratchEv>
}
    800022ec:	00813083          	ld	ra,8(sp)
    800022f0:	00013403          	ld	s0,0(sp)
    800022f4:	01010113          	addi	sp,sp,16
    800022f8:	00008067          	ret

00000000800022fc <_ZN3PCB21threadDispatchHandlerEv>:

void PCB::threadDispatchHandler()
{
    800022fc:	ff010113          	addi	sp,sp,-16
    80002300:	00113423          	sd	ra,8(sp)
    80002304:	00813023          	sd	s0,0(sp)
    80002308:	01010413          	addi	s0,sp,16
    PCB::timeSliceCounter = 0;
    8000230c:	00008797          	auipc	a5,0x8
    80002310:	2c07ba23          	sd	zero,724(a5) # 8000a5e0 <_ZN3PCB16timeSliceCounterE>
    PCB::dispatch();
    80002314:	00000097          	auipc	ra,0x0
    80002318:	d50080e7          	jalr	-688(ra) # 80002064 <_ZN3PCB8dispatchEv>
}
    8000231c:	00813083          	ld	ra,8(sp)
    80002320:	00013403          	ld	s0,0(sp)
    80002324:	01010113          	addi	sp,sp,16
    80002328:	00008067          	ret

000000008000232c <_ZN3PCB18threadSleepHandlerEv>:

void PCB::threadSleepHandler()
{
    8000232c:	ff010113          	addi	sp,sp,-16
    80002330:	00113423          	sd	ra,8(sp)
    80002334:	00813023          	sd	s0,0(sp)
    80002338:	01010413          	addi	s0,sp,16
    uint64 time;
    __asm__ volatile("mv %0, a1" : "=r"(time));
    8000233c:	00058793          	mv	a5,a1
    PCB::timeSliceCounter = 0;
    80002340:	00008717          	auipc	a4,0x8
    80002344:	28870713          	addi	a4,a4,648 # 8000a5c8 <_ZN3PCB7runningE>
    80002348:	00073c23          	sd	zero,24(a4)
    PCB::running->setTimeToSleep(time + Riscv::totalTime);
    8000234c:	00073703          	ld	a4,0(a4)
    80002350:	00008697          	auipc	a3,0x8
    80002354:	1f06b683          	ld	a3,496(a3) # 8000a540 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002358:	0006b683          	ld	a3,0(a3)
    8000235c:	00d787b3          	add	a5,a5,a3
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80002360:	02f73023          	sd	a5,32(a4)
    SleepPCBList::insertSleepingPCB();
    80002364:	00001097          	auipc	ra,0x1
    80002368:	fbc080e7          	jalr	-68(ra) # 80003320 <_ZN12SleepPCBList17insertSleepingPCBEv>
    PCB::dispatch();
    8000236c:	00000097          	auipc	ra,0x0
    80002370:	cf8080e7          	jalr	-776(ra) # 80002064 <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0x0");
    80002374:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80002378:	00002097          	auipc	ra,0x2
    8000237c:	a30080e7          	jalr	-1488(ra) # 80003da8 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002380:	00813083          	ld	ra,8(sp)
    80002384:	00013403          	ld	s0,0(sp)
    80002388:	01010113          	addi	sp,sp,16
    8000238c:	00008067          	ret

0000000080002390 <_ZN3PCB19threadCreateHandlerEv>:

void PCB::threadCreateHandler()
{
    80002390:	fd010113          	addi	sp,sp,-48
    80002394:	02113423          	sd	ra,40(sp)
    80002398:	02813023          	sd	s0,32(sp)
    8000239c:	00913c23          	sd	s1,24(sp)
    800023a0:	01213823          	sd	s2,16(sp)
    800023a4:	01313423          	sd	s3,8(sp)
    800023a8:	01413023          	sd	s4,0(sp)
    800023ac:	03010413          	addi	s0,sp,48
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    800023b0:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    800023b4:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    800023b8:	00068a13          	mv	s4,a3

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args, (void *) PCB::savedRegA4, DEFAULT_TIME_SLICE);
    800023bc:	06000513          	li	a0,96
    800023c0:	00000097          	auipc	ra,0x0
    800023c4:	d30080e7          	jalr	-720(ra) # 800020f0 <_ZN3PCBnwEm>
    800023c8:	00050493          	mv	s1,a0
    800023cc:	00200713          	li	a4,2
    800023d0:	00008697          	auipc	a3,0x8
    800023d4:	2186b683          	ld	a3,536(a3) # 8000a5e8 <_ZN3PCB10savedRegA4E>
    800023d8:	000a0613          	mv	a2,s4
    800023dc:	00098593          	mv	a1,s3
    800023e0:	00000097          	auipc	ra,0x0
    800023e4:	c0c080e7          	jalr	-1012(ra) # 80001fec <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    800023e8:	00993023          	sd	s1,0(s2)

    if (newPCB == 0)
    800023ec:	02048e63          	beqz	s1,80002428 <_ZN3PCB19threadCreateHandlerEv+0x98>
            __asm__ volatile("li a0, 0xffffffffffffffff");
    else
    {
        newPCB->start();
    800023f0:	00048513          	mv	a0,s1
    800023f4:	00000097          	auipc	ra,0x0
    800023f8:	c48080e7          	jalr	-952(ra) # 8000203c <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    800023fc:	00000513          	li	a0,0
    }
    Riscv::w_a0_sscratch();
    80002400:	00002097          	auipc	ra,0x2
    80002404:	9a8080e7          	jalr	-1624(ra) # 80003da8 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002408:	02813083          	ld	ra,40(sp)
    8000240c:	02013403          	ld	s0,32(sp)
    80002410:	01813483          	ld	s1,24(sp)
    80002414:	01013903          	ld	s2,16(sp)
    80002418:	00813983          	ld	s3,8(sp)
    8000241c:	00013a03          	ld	s4,0(sp)
    80002420:	03010113          	addi	sp,sp,48
    80002424:	00008067          	ret
            __asm__ volatile("li a0, 0xffffffffffffffff");
    80002428:	fff00513          	li	a0,-1
    8000242c:	fd5ff06f          	j	80002400 <_ZN3PCB19threadCreateHandlerEv+0x70>

0000000080002430 <_ZN3PCB18threadStartHandlerEv>:

void PCB::threadStartHandler()
{
    80002430:	ff010113          	addi	sp,sp,-16
    80002434:	00113423          	sd	ra,8(sp)
    80002438:	00813023          	sd	s0,0(sp)
    8000243c:	01010413          	addi	s0,sp,16
    PCB* pcb;
    __asm__ volatile("mv %0, a1" : "=r"(pcb));
    80002440:	00058513          	mv	a0,a1
    if(pcb != 0)
    80002444:	02050463          	beqz	a0,8000246c <_ZN3PCB18threadStartHandlerEv+0x3c>
    {
        pcb->start();
    80002448:	00000097          	auipc	ra,0x0
    8000244c:	bf4080e7          	jalr	-1036(ra) # 8000203c <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    80002450:	00000513          	li	a0,0
    }
    else
    {
        __asm__ volatile("li a0, 0xffffffffffffffff");
    }
    Riscv::w_a0_sscratch();
    80002454:	00002097          	auipc	ra,0x2
    80002458:	954080e7          	jalr	-1708(ra) # 80003da8 <_ZN5Riscv13w_a0_sscratchEv>
}
    8000245c:	00813083          	ld	ra,8(sp)
    80002460:	00013403          	ld	s0,0(sp)
    80002464:	01010113          	addi	sp,sp,16
    80002468:	00008067          	ret
        __asm__ volatile("li a0, 0xffffffffffffffff");
    8000246c:	fff00513          	li	a0,-1
    80002470:	fe5ff06f          	j	80002454 <_ZN3PCB18threadStartHandlerEv+0x24>

0000000080002474 <_ZN3PCB20threadMakePCBHandlerEv>:

void PCB::threadMakePCBHandler()
{
    80002474:	fd010113          	addi	sp,sp,-48
    80002478:	02113423          	sd	ra,40(sp)
    8000247c:	02813023          	sd	s0,32(sp)
    80002480:	00913c23          	sd	s1,24(sp)
    80002484:	01213823          	sd	s2,16(sp)
    80002488:	01313423          	sd	s3,8(sp)
    8000248c:	01413023          	sd	s4,0(sp)
    80002490:	03010413          	addi	s0,sp,48
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    80002494:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    80002498:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    8000249c:	00068a13          	mv	s4,a3

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args, (void *) PCB::savedRegA4, DEFAULT_TIME_SLICE);
    800024a0:	06000513          	li	a0,96
    800024a4:	00000097          	auipc	ra,0x0
    800024a8:	c4c080e7          	jalr	-948(ra) # 800020f0 <_ZN3PCBnwEm>
    800024ac:	00050493          	mv	s1,a0
    800024b0:	00200713          	li	a4,2
    800024b4:	00008697          	auipc	a3,0x8
    800024b8:	1346b683          	ld	a3,308(a3) # 8000a5e8 <_ZN3PCB10savedRegA4E>
    800024bc:	000a0613          	mv	a2,s4
    800024c0:	00098593          	mv	a1,s3
    800024c4:	00000097          	auipc	ra,0x0
    800024c8:	b28080e7          	jalr	-1240(ra) # 80001fec <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    800024cc:	00993023          	sd	s1,0(s2)

    if (newPCB == 0)
    800024d0:	02048863          	beqz	s1,80002500 <_ZN3PCB20threadMakePCBHandlerEv+0x8c>
        __asm__ volatile("li a0, 0xffffffffffffffff");
    else
        __asm__ volatile("li a0, 0");
    800024d4:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    800024d8:	00002097          	auipc	ra,0x2
    800024dc:	8d0080e7          	jalr	-1840(ra) # 80003da8 <_ZN5Riscv13w_a0_sscratchEv>
}
    800024e0:	02813083          	ld	ra,40(sp)
    800024e4:	02013403          	ld	s0,32(sp)
    800024e8:	01813483          	ld	s1,24(sp)
    800024ec:	01013903          	ld	s2,16(sp)
    800024f0:	00813983          	ld	s3,8(sp)
    800024f4:	00013a03          	ld	s4,0(sp)
    800024f8:	03010113          	addi	sp,sp,48
    800024fc:	00008067          	ret
        __asm__ volatile("li a0, 0xffffffffffffffff");
    80002500:	fff00513          	li	a0,-1
    80002504:	fd5ff06f          	j	800024d8 <_ZN3PCB20threadMakePCBHandlerEv+0x64>

0000000080002508 <_ZN3PCB19threadDelPCBHandlerEv>:

void PCB::threadDelPCBHandler()
{
    80002508:	fe010113          	addi	sp,sp,-32
    8000250c:	00113c23          	sd	ra,24(sp)
    80002510:	00813823          	sd	s0,16(sp)
    80002514:	00913423          	sd	s1,8(sp)
    80002518:	02010413          	addi	s0,sp,32
    PCB* pcb;
    __asm__ volatile("mv %0, a1" : "=r"(pcb));
    8000251c:	00058493          	mv	s1,a1
    if(pcb != 0)
    80002520:	02048e63          	beqz	s1,8000255c <_ZN3PCB19threadDelPCBHandlerEv+0x54>
    {
        delete pcb;
    80002524:	00048513          	mv	a0,s1
    80002528:	00000097          	auipc	ra,0x0
    8000252c:	c18080e7          	jalr	-1000(ra) # 80002140 <_ZN3PCBD1Ev>
    80002530:	00048513          	mv	a0,s1
    80002534:	00000097          	auipc	ra,0x0
    80002538:	be4080e7          	jalr	-1052(ra) # 80002118 <_ZN3PCBdlEPv>
        __asm__ volatile("li a0, 0x0");
    8000253c:	00000513          	li	a0,0
    }
    else
    {
        __asm__ volatile("li a0, 0x1");
    }
    Riscv::w_a0_sscratch();
    80002540:	00002097          	auipc	ra,0x2
    80002544:	868080e7          	jalr	-1944(ra) # 80003da8 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002548:	01813083          	ld	ra,24(sp)
    8000254c:	01013403          	ld	s0,16(sp)
    80002550:	00813483          	ld	s1,8(sp)
    80002554:	02010113          	addi	sp,sp,32
    80002558:	00008067          	ret
        __asm__ volatile("li a0, 0x1");
    8000255c:	00100513          	li	a0,1
    80002560:	fe1ff06f          	j	80002540 <_ZN3PCB19threadDelPCBHandlerEv+0x38>

0000000080002564 <_Z15addBlockToLevelP14buddyAllocatorPvm>:
    addBlockToLevel(buddy, addr, level);
}

//adds free block to level
void addBlockToLevel(buddyAllocator* buddy, void* addr, size_t level)
{
    80002564:	ff010113          	addi	sp,sp,-16
    80002568:	00813423          	sd	s0,8(sp)
    8000256c:	01010413          	addi	s0,sp,16
    buddyBlock* newBlock = (buddyBlock*)addr;
    newBlock->next = nullptr;
    80002570:	0005b023          	sd	zero,0(a1)
    if(buddy->bucket[level].first == nullptr)
    80002574:	00260793          	addi	a5,a2,2
    80002578:	00479793          	slli	a5,a5,0x4
    8000257c:	00f507b3          	add	a5,a0,a5
    80002580:	0007b783          	ld	a5,0(a5)
    80002584:	02078463          	beqz	a5,800025ac <_Z15addBlockToLevelP14buddyAllocatorPvm+0x48>
    {
        buddy->bucket[level].first = buddy->bucket[level].last = newBlock;
    }
    else
    {
        buddy->bucket[level].last->next = newBlock;
    80002588:	00260613          	addi	a2,a2,2
    8000258c:	00461613          	slli	a2,a2,0x4
    80002590:	00c50633          	add	a2,a0,a2
    80002594:	00863783          	ld	a5,8(a2)
    80002598:	00b7b023          	sd	a1,0(a5)
        buddy->bucket[level].last = newBlock;
    8000259c:	00b63423          	sd	a1,8(a2)
    }
}
    800025a0:	00813403          	ld	s0,8(sp)
    800025a4:	01010113          	addi	sp,sp,16
    800025a8:	00008067          	ret
        buddy->bucket[level].first = buddy->bucket[level].last = newBlock;
    800025ac:	00260613          	addi	a2,a2,2
    800025b0:	00461613          	slli	a2,a2,0x4
    800025b4:	00c50633          	add	a2,a0,a2
    800025b8:	00b63423          	sd	a1,8(a2)
    800025bc:	00b63023          	sd	a1,0(a2)
    800025c0:	fe1ff06f          	j	800025a0 <_Z15addBlockToLevelP14buddyAllocatorPvm+0x3c>

00000000800025c4 <_Z17getBuddyBlockAddrP14buddyAllocatorPvm>:

size_t getBuddyBlockAddr(buddyAllocator* buddy, void* addr, size_t level)
{
    800025c4:	ff010113          	addi	sp,sp,-16
    800025c8:	00813423          	sd	s0,8(sp)
    800025cc:	01010413          	addi	s0,sp,16
    size_t diff = BLOCK_SIZE << level;
    800025d0:	000017b7          	lui	a5,0x1
    800025d4:	00c7963b          	sllw	a2,a5,a2
    size_t off = (size_t)addr - (size_t)buddy->startAddr;
    800025d8:	00853783          	ld	a5,8(a0)
    800025dc:	40f587b3          	sub	a5,a1,a5
    if(diff & off)
    800025e0:	00f677b3          	and	a5,a2,a5
    800025e4:	00078a63          	beqz	a5,800025f8 <_Z17getBuddyBlockAddrP14buddyAllocatorPvm+0x34>
        return (size_t)addr - diff;
    800025e8:	40c58533          	sub	a0,a1,a2
    else
        return (size_t)addr + diff;
}
    800025ec:	00813403          	ld	s0,8(sp)
    800025f0:	01010113          	addi	sp,sp,16
    800025f4:	00008067          	ret
        return (size_t)addr + diff;
    800025f8:	00c58533          	add	a0,a1,a2
    800025fc:	ff1ff06f          	j	800025ec <_Z17getBuddyBlockAddrP14buddyAllocatorPvm+0x28>

0000000080002600 <_Z5splitP14buddyAllocatorPvmmb>:
{
    80002600:	fd010113          	addi	sp,sp,-48
    80002604:	02113423          	sd	ra,40(sp)
    80002608:	02813023          	sd	s0,32(sp)
    8000260c:	00913c23          	sd	s1,24(sp)
    80002610:	01213823          	sd	s2,16(sp)
    80002614:	01313423          	sd	s3,8(sp)
    80002618:	01413023          	sd	s4,0(sp)
    8000261c:	03010413          	addi	s0,sp,48
    80002620:	00050913          	mv	s2,a0
    80002624:	00058a13          	mv	s4,a1
    if(!splitMore)
    80002628:	06070a63          	beqz	a4,8000269c <_Z5splitP14buddyAllocatorPvmmb+0x9c>
    8000262c:	00060993          	mv	s3,a2
        if(currLevel == finalLevel)
    80002630:	04c68663          	beq	a3,a2,8000267c <_Z5splitP14buddyAllocatorPvmmb+0x7c>
        size_t buddyBlock = getBuddyBlockAddr(buddy, addr, currLevel - 1); // currLevel - 1 for next step
    80002634:	fff68493          	addi	s1,a3,-1
    80002638:	00048613          	mv	a2,s1
    8000263c:	00000097          	auipc	ra,0x0
    80002640:	f88080e7          	jalr	-120(ra) # 800025c4 <_Z17getBuddyBlockAddrP14buddyAllocatorPvm>
    80002644:	00050593          	mv	a1,a0
        split(buddy, (void*)buddyBlock, finalLevel, currLevel - 1, false); // continue splitting
    80002648:	00000713          	li	a4,0
    8000264c:	00048693          	mv	a3,s1
    80002650:	00098613          	mv	a2,s3
    80002654:	00090513          	mv	a0,s2
    80002658:	00000097          	auipc	ra,0x0
    8000265c:	fa8080e7          	jalr	-88(ra) # 80002600 <_Z5splitP14buddyAllocatorPvmmb>
        split(buddy, addr, finalLevel, currLevel - 1, true); // continue splitting
    80002660:	00100713          	li	a4,1
    80002664:	00048693          	mv	a3,s1
    80002668:	00098613          	mv	a2,s3
    8000266c:	000a0593          	mv	a1,s4
    80002670:	00090513          	mv	a0,s2
    80002674:	00000097          	auipc	ra,0x0
    80002678:	f8c080e7          	jalr	-116(ra) # 80002600 <_Z5splitP14buddyAllocatorPvmmb>
}
    8000267c:	02813083          	ld	ra,40(sp)
    80002680:	02013403          	ld	s0,32(sp)
    80002684:	01813483          	ld	s1,24(sp)
    80002688:	01013903          	ld	s2,16(sp)
    8000268c:	00813983          	ld	s3,8(sp)
    80002690:	00013a03          	ld	s4,0(sp)
    80002694:	03010113          	addi	sp,sp,48
    80002698:	00008067          	ret
        addBlockToLevel(buddy, addr, currLevel);
    8000269c:	00068613          	mv	a2,a3
    800026a0:	00000097          	auipc	ra,0x0
    800026a4:	ec4080e7          	jalr	-316(ra) # 80002564 <_Z15addBlockToLevelP14buddyAllocatorPvm>
    800026a8:	fd5ff06f          	j	8000267c <_Z5splitP14buddyAllocatorPvmmb+0x7c>

00000000800026ac <_Z11buddy_allocP14buddyAllocatorm>:
{
    800026ac:	fd010113          	addi	sp,sp,-48
    800026b0:	02113423          	sd	ra,40(sp)
    800026b4:	02813023          	sd	s0,32(sp)
    800026b8:	00913c23          	sd	s1,24(sp)
    800026bc:	01213823          	sd	s2,16(sp)
    800026c0:	01313423          	sd	s3,8(sp)
    800026c4:	01413023          	sd	s4,0(sp)
    800026c8:	03010413          	addi	s0,sp,48
    800026cc:	00050913          	mv	s2,a0
    800026d0:	00058493          	mv	s1,a1
    KConsole::trapPrintString("Buddy allocation: ");
    800026d4:	00006517          	auipc	a0,0x6
    800026d8:	a5c50513          	addi	a0,a0,-1444 # 80008130 <CONSOLE_STATUS+0x120>
    800026dc:	00001097          	auipc	ra,0x1
    800026e0:	b6c080e7          	jalr	-1172(ra) # 80003248 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintInt(numOfBlocks); KConsole::trapPrintString("\n");
    800026e4:	00000613          	li	a2,0
    800026e8:	00a00593          	li	a1,10
    800026ec:	00048513          	mv	a0,s1
    800026f0:	00001097          	auipc	ra,0x1
    800026f4:	b9c080e7          	jalr	-1124(ra) # 8000328c <_ZN8KConsole12trapPrintIntEmii>
    800026f8:	00006517          	auipc	a0,0x6
    800026fc:	f0850513          	addi	a0,a0,-248 # 80008600 <CONSOLE_STATUS+0x5f0>
    80002700:	00001097          	auipc	ra,0x1
    80002704:	b48080e7          	jalr	-1208(ra) # 80003248 <_ZN8KConsole15trapPrintStringEPKc>
    size_t deg = 0;
    80002708:	00000a13          	li	s4,0
    size_t x = 1;
    8000270c:	00100793          	li	a5,1
    while(x < num)
    80002710:	0097f863          	bgeu	a5,s1,80002720 <_Z11buddy_allocP14buddyAllocatorm+0x74>
        deg++;
    80002714:	001a0a13          	addi	s4,s4,1
        x<<=1;
    80002718:	00179793          	slli	a5,a5,0x1
    while(x < num)
    8000271c:	ff5ff06f          	j	80002710 <_Z11buddy_allocP14buddyAllocatorm+0x64>
    KConsole::trapPrintString("Level: ");
    80002720:	00006517          	auipc	a0,0x6
    80002724:	a2850513          	addi	a0,a0,-1496 # 80008148 <CONSOLE_STATUS+0x138>
    80002728:	00001097          	auipc	ra,0x1
    8000272c:	b20080e7          	jalr	-1248(ra) # 80003248 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintInt(level); KConsole::trapPrintString("\n");
    80002730:	00000613          	li	a2,0
    80002734:	00a00593          	li	a1,10
    80002738:	000a0513          	mv	a0,s4
    8000273c:	00001097          	auipc	ra,0x1
    80002740:	b50080e7          	jalr	-1200(ra) # 8000328c <_ZN8KConsole12trapPrintIntEmii>
    80002744:	00006517          	auipc	a0,0x6
    80002748:	ebc50513          	addi	a0,a0,-324 # 80008600 <CONSOLE_STATUS+0x5f0>
    8000274c:	00001097          	auipc	ra,0x1
    80002750:	afc080e7          	jalr	-1284(ra) # 80003248 <_ZN8KConsole15trapPrintStringEPKc>
    for(size_t i = level; i <= buddy->maxLevel;i++)
    80002754:	000a0493          	mv	s1,s4
    80002758:	01893783          	ld	a5,24(s2)
    8000275c:	0a97e063          	bltu	a5,s1,800027fc <_Z11buddy_allocP14buddyAllocatorm+0x150>
        if(buddy->bucket[i].first != nullptr)
    80002760:	00248793          	addi	a5,s1,2
    80002764:	00479793          	slli	a5,a5,0x4
    80002768:	00f907b3          	add	a5,s2,a5
    8000276c:	0007b983          	ld	s3,0(a5) # 1000 <_entry-0x7ffff000>
    80002770:	00099663          	bnez	s3,8000277c <_Z11buddy_allocP14buddyAllocatorm+0xd0>
    for(size_t i = level; i <= buddy->maxLevel;i++)
    80002774:	00148493          	addi	s1,s1,1
    80002778:	fe1ff06f          	j	80002758 <_Z11buddy_allocP14buddyAllocatorm+0xac>
            KConsole::trapPrintString("Found the block:");
    8000277c:	00006517          	auipc	a0,0x6
    80002780:	9d450513          	addi	a0,a0,-1580 # 80008150 <CONSOLE_STATUS+0x140>
    80002784:	00001097          	auipc	ra,0x1
    80002788:	ac4080e7          	jalr	-1340(ra) # 80003248 <_ZN8KConsole15trapPrintStringEPKc>
            KConsole::trapPrintInt((size_t)ret, 16); KConsole::trapPrintString("\n");
    8000278c:	00000613          	li	a2,0
    80002790:	01000593          	li	a1,16
    80002794:	00098513          	mv	a0,s3
    80002798:	00001097          	auipc	ra,0x1
    8000279c:	af4080e7          	jalr	-1292(ra) # 8000328c <_ZN8KConsole12trapPrintIntEmii>
    800027a0:	00006517          	auipc	a0,0x6
    800027a4:	e6050513          	addi	a0,a0,-416 # 80008600 <CONSOLE_STATUS+0x5f0>
    800027a8:	00001097          	auipc	ra,0x1
    800027ac:	aa0080e7          	jalr	-1376(ra) # 80003248 <_ZN8KConsole15trapPrintStringEPKc>
            buddy->bucket[i].first = ret->next;
    800027b0:	0009b703          	ld	a4,0(s3)
    800027b4:	00248793          	addi	a5,s1,2
    800027b8:	00479793          	slli	a5,a5,0x4
    800027bc:	00f907b3          	add	a5,s2,a5
    800027c0:	00e7b023          	sd	a4,0(a5)
            if(buddy->bucket[i].first == nullptr)
    800027c4:	02070263          	beqz	a4,800027e8 <_Z11buddy_allocP14buddyAllocatorm+0x13c>
            split(buddy, (void*)ret, level, i, true);
    800027c8:	00100713          	li	a4,1
    800027cc:	00048693          	mv	a3,s1
    800027d0:	000a0613          	mv	a2,s4
    800027d4:	00098593          	mv	a1,s3
    800027d8:	00090513          	mv	a0,s2
    800027dc:	00000097          	auipc	ra,0x0
    800027e0:	e24080e7          	jalr	-476(ra) # 80002600 <_Z5splitP14buddyAllocatorPvmmb>
            return ret;
    800027e4:	01c0006f          	j	80002800 <_Z11buddy_allocP14buddyAllocatorm+0x154>
                buddy->bucket[i].last = nullptr;
    800027e8:	00248793          	addi	a5,s1,2
    800027ec:	00479793          	slli	a5,a5,0x4
    800027f0:	00f907b3          	add	a5,s2,a5
    800027f4:	0007b423          	sd	zero,8(a5)
    800027f8:	fd1ff06f          	j	800027c8 <_Z11buddy_allocP14buddyAllocatorm+0x11c>
    return nullptr;
    800027fc:	00000993          	li	s3,0
}
    80002800:	00098513          	mv	a0,s3
    80002804:	02813083          	ld	ra,40(sp)
    80002808:	02013403          	ld	s0,32(sp)
    8000280c:	01813483          	ld	s1,24(sp)
    80002810:	01013903          	ld	s2,16(sp)
    80002814:	00813983          	ld	s3,8(sp)
    80002818:	00013a03          	ld	s4,0(sp)
    8000281c:	03010113          	addi	sp,sp,48
    80002820:	00008067          	ret

0000000080002824 <_Z9addBlocksP14buddyAllocatorPvm>:
{
    80002824:	fd010113          	addi	sp,sp,-48
    80002828:	02113423          	sd	ra,40(sp)
    8000282c:	02813023          	sd	s0,32(sp)
    80002830:	00913c23          	sd	s1,24(sp)
    80002834:	01213823          	sd	s2,16(sp)
    80002838:	01313423          	sd	s3,8(sp)
    8000283c:	01413023          	sd	s4,0(sp)
    80002840:	03010413          	addi	s0,sp,48
    80002844:	00050993          	mv	s3,a0
    80002848:	00058a13          	mv	s4,a1
    size_t deg = 0;
    8000284c:	00000493          	li	s1,0
    size_t x = 1;
    80002850:	00100793          	li	a5,1
    while(x < num)
    80002854:	00c7f863          	bgeu	a5,a2,80002864 <_Z9addBlocksP14buddyAllocatorPvm+0x40>
        deg++;
    80002858:	00148493          	addi	s1,s1,1
        x<<=1;
    8000285c:	00179793          	slli	a5,a5,0x1
    while(x < num)
    80002860:	ff5ff06f          	j	80002854 <_Z9addBlocksP14buddyAllocatorPvm+0x30>
    if(level == buddy->maxLevel)
    80002864:	0189b783          	ld	a5,24(s3)
    80002868:	06978463          	beq	a5,s1,800028d0 <_Z9addBlocksP14buddyAllocatorPvm+0xac>
    size_t buddyBlockAddr = getBuddyBlockAddr(buddy,addr,level);
    8000286c:	00048613          	mv	a2,s1
    80002870:	000a0593          	mv	a1,s4
    80002874:	00098513          	mv	a0,s3
    80002878:	00000097          	auipc	ra,0x0
    8000287c:	d4c080e7          	jalr	-692(ra) # 800025c4 <_Z17getBuddyBlockAddrP14buddyAllocatorPvm>
    80002880:	00050913          	mv	s2,a0
    KConsole::trapPrintString("Buddy block addr ");
    80002884:	00006517          	auipc	a0,0x6
    80002888:	8e450513          	addi	a0,a0,-1820 # 80008168 <CONSOLE_STATUS+0x158>
    8000288c:	00001097          	auipc	ra,0x1
    80002890:	9bc080e7          	jalr	-1604(ra) # 80003248 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintInt(buddyBlockAddr, 16); KConsole::trapPrintString("\n");
    80002894:	00000613          	li	a2,0
    80002898:	01000593          	li	a1,16
    8000289c:	00090513          	mv	a0,s2
    800028a0:	00001097          	auipc	ra,0x1
    800028a4:	9ec080e7          	jalr	-1556(ra) # 8000328c <_ZN8KConsole12trapPrintIntEmii>
    800028a8:	00006517          	auipc	a0,0x6
    800028ac:	d5850513          	addi	a0,a0,-680 # 80008600 <CONSOLE_STATUS+0x5f0>
    800028b0:	00001097          	auipc	ra,0x1
    800028b4:	998080e7          	jalr	-1640(ra) # 80003248 <_ZN8KConsole15trapPrintStringEPKc>
    buddyBlock* curr = buddy->bucket[level].first;
    800028b8:	00248793          	addi	a5,s1,2
    800028bc:	00479793          	slli	a5,a5,0x4
    800028c0:	00f987b3          	add	a5,s3,a5
    800028c4:	0007b783          	ld	a5,0(a5)
    buddyBlock* prev = nullptr;
    800028c8:	00000713          	li	a4,0
    800028cc:	08c0006f          	j	80002958 <_Z9addBlocksP14buddyAllocatorPvm+0x134>
        addBlockToLevel(buddy, addr, level);
    800028d0:	00048613          	mv	a2,s1
    800028d4:	000a0593          	mv	a1,s4
    800028d8:	00098513          	mv	a0,s3
    800028dc:	00000097          	auipc	ra,0x0
    800028e0:	c88080e7          	jalr	-888(ra) # 80002564 <_Z15addBlockToLevelP14buddyAllocatorPvm>
        return;
    800028e4:	0d40006f          	j	800029b8 <_Z9addBlocksP14buddyAllocatorPvm+0x194>
                    buddy->bucket[level].last = prev;
    800028e8:	00248793          	addi	a5,s1,2
    800028ec:	00479793          	slli	a5,a5,0x4
    800028f0:	00f987b3          	add	a5,s3,a5
    800028f4:	00e7b423          	sd	a4,8(a5)
    800028f8:	0880006f          	j	80002980 <_Z9addBlocksP14buddyAllocatorPvm+0x15c>
                if(curr->next == nullptr)
    800028fc:	0007b703          	ld	a4,0(a5)
    80002900:	00070c63          	beqz	a4,80002918 <_Z9addBlocksP14buddyAllocatorPvm+0xf4>
                    buddy->bucket[level].first = curr->next;
    80002904:	00248793          	addi	a5,s1,2
    80002908:	00479793          	slli	a5,a5,0x4
    8000290c:	00f987b3          	add	a5,s3,a5
    80002910:	00e7b023          	sd	a4,0(a5)
    80002914:	06c0006f          	j	80002980 <_Z9addBlocksP14buddyAllocatorPvm+0x15c>
                    buddy->bucket[level].first = buddy->bucket[level].last = nullptr;
    80002918:	00248793          	addi	a5,s1,2
    8000291c:	00479793          	slli	a5,a5,0x4
    80002920:	00f987b3          	add	a5,s3,a5
    80002924:	0007b423          	sd	zero,8(a5)
    80002928:	0007b023          	sd	zero,0(a5)
    8000292c:	0540006f          	j	80002980 <_Z9addBlocksP14buddyAllocatorPvm+0x15c>
            else addBlocks(buddy, (void*)buddyBlockAddr, 1 << (level + 1)); //merge two chunks
    80002930:	0014849b          	addiw	s1,s1,1
    80002934:	00100613          	li	a2,1
    80002938:	0096163b          	sllw	a2,a2,s1
    8000293c:	00090593          	mv	a1,s2
    80002940:	00098513          	mv	a0,s3
    80002944:	00000097          	auipc	ra,0x0
    80002948:	ee0080e7          	jalr	-288(ra) # 80002824 <_Z9addBlocksP14buddyAllocatorPvm>
            return;
    8000294c:	06c0006f          	j	800029b8 <_Z9addBlocksP14buddyAllocatorPvm+0x194>
        prev = curr;
    80002950:	00078713          	mv	a4,a5
        curr = curr->next;
    80002954:	0007b783          	ld	a5,0(a5)
    while(curr != nullptr)
    80002958:	04078663          	beqz	a5,800029a4 <_Z9addBlocksP14buddyAllocatorPvm+0x180>
        if((size_t)curr == buddyBlockAddr)
    8000295c:	ff279ae3          	bne	a5,s2,80002950 <_Z9addBlocksP14buddyAllocatorPvm+0x12c>
            if(prev != nullptr)
    80002960:	f8070ee3          	beqz	a4,800028fc <_Z9addBlocksP14buddyAllocatorPvm+0xd8>
                prev->next = curr->next;
    80002964:	0007b683          	ld	a3,0(a5)
    80002968:	00d73023          	sd	a3,0(a4)
                if(curr == buddy->bucket[level].last)
    8000296c:	00248693          	addi	a3,s1,2
    80002970:	00469693          	slli	a3,a3,0x4
    80002974:	00d986b3          	add	a3,s3,a3
    80002978:	0086b683          	ld	a3,8(a3)
    8000297c:	f6f686e3          	beq	a3,a5,800028e8 <_Z9addBlocksP14buddyAllocatorPvm+0xc4>
            if((size_t)addr < buddyBlockAddr) addBlocks(buddy, addr, 1 << (level + 1)); //merge two chunks
    80002980:	fb2a78e3          	bgeu	s4,s2,80002930 <_Z9addBlocksP14buddyAllocatorPvm+0x10c>
    80002984:	0014849b          	addiw	s1,s1,1
    80002988:	00100613          	li	a2,1
    8000298c:	0096163b          	sllw	a2,a2,s1
    80002990:	000a0593          	mv	a1,s4
    80002994:	00098513          	mv	a0,s3
    80002998:	00000097          	auipc	ra,0x0
    8000299c:	e8c080e7          	jalr	-372(ra) # 80002824 <_Z9addBlocksP14buddyAllocatorPvm>
    800029a0:	0180006f          	j	800029b8 <_Z9addBlocksP14buddyAllocatorPvm+0x194>
    addBlockToLevel(buddy, addr, level);
    800029a4:	00048613          	mv	a2,s1
    800029a8:	000a0593          	mv	a1,s4
    800029ac:	00098513          	mv	a0,s3
    800029b0:	00000097          	auipc	ra,0x0
    800029b4:	bb4080e7          	jalr	-1100(ra) # 80002564 <_Z15addBlockToLevelP14buddyAllocatorPvm>
}
    800029b8:	02813083          	ld	ra,40(sp)
    800029bc:	02013403          	ld	s0,32(sp)
    800029c0:	01813483          	ld	s1,24(sp)
    800029c4:	01013903          	ld	s2,16(sp)
    800029c8:	00813983          	ld	s3,8(sp)
    800029cc:	00013a03          	ld	s4,0(sp)
    800029d0:	03010113          	addi	sp,sp,48
    800029d4:	00008067          	ret

00000000800029d8 <_Z10buddy_initPvm>:
{
    800029d8:	fd010113          	addi	sp,sp,-48
    800029dc:	02113423          	sd	ra,40(sp)
    800029e0:	02813023          	sd	s0,32(sp)
    800029e4:	00913c23          	sd	s1,24(sp)
    800029e8:	01213823          	sd	s2,16(sp)
    800029ec:	01313423          	sd	s3,8(sp)
    800029f0:	01413023          	sd	s4,0(sp)
    800029f4:	03010413          	addi	s0,sp,48
    800029f8:	00050913          	mv	s2,a0
    800029fc:	00058993          	mv	s3,a1
    KConsole::trapPrintString("Buddy initialization\n");
    80002a00:	00005517          	auipc	a0,0x5
    80002a04:	78050513          	addi	a0,a0,1920 # 80008180 <CONSOLE_STATUS+0x170>
    80002a08:	00001097          	auipc	ra,0x1
    80002a0c:	840080e7          	jalr	-1984(ra) # 80003248 <_ZN8KConsole15trapPrintStringEPKc>
    size_t blockAddr = getBlockAddr((size_t)addr); //alling the address
    80002a10:	00090493          	mv	s1,s2
    return addr & mask;
    80002a14:	fffffa37          	lui	s4,0xfffff
    80002a18:	01497a33          	and	s4,s2,s4
    KConsole::trapPrintInt(blockAddr,16); KConsole::trapPrintString("\n");
    80002a1c:	00000613          	li	a2,0
    80002a20:	01000593          	li	a1,16
    80002a24:	000a0513          	mv	a0,s4
    80002a28:	00001097          	auipc	ra,0x1
    80002a2c:	864080e7          	jalr	-1948(ra) # 8000328c <_ZN8KConsole12trapPrintIntEmii>
    80002a30:	00006517          	auipc	a0,0x6
    80002a34:	bd050513          	addi	a0,a0,-1072 # 80008600 <CONSOLE_STATUS+0x5f0>
    80002a38:	00001097          	auipc	ra,0x1
    80002a3c:	810080e7          	jalr	-2032(ra) # 80003248 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintInt(buddyAddr,16); KConsole::trapPrintString("\n");
    80002a40:	00000613          	li	a2,0
    80002a44:	01000593          	li	a1,16
    80002a48:	00090513          	mv	a0,s2
    80002a4c:	00001097          	auipc	ra,0x1
    80002a50:	840080e7          	jalr	-1984(ra) # 8000328c <_ZN8KConsole12trapPrintIntEmii>
    80002a54:	00006517          	auipc	a0,0x6
    80002a58:	bac50513          	addi	a0,a0,-1108 # 80008600 <CONSOLE_STATUS+0x5f0>
    80002a5c:	00000097          	auipc	ra,0x0
    80002a60:	7ec080e7          	jalr	2028(ra) # 80003248 <_ZN8KConsole15trapPrintStringEPKc>
    if((size_t)addr != blockAddr) // if start address not aligned
    80002a64:	01490863          	beq	s2,s4,80002a74 <_Z10buddy_initPvm+0x9c>
    return currBlock + BLOCK_SIZE;
    80002a68:	000014b7          	lui	s1,0x1
    80002a6c:	009a04b3          	add	s1,s4,s1
        numOfBlocks--; //have to discard one block
    80002a70:	fff98993          	addi	s3,s3,-1
    KConsole::trapPrintString("Buddy metadata address: ");
    80002a74:	00005517          	auipc	a0,0x5
    80002a78:	72450513          	addi	a0,a0,1828 # 80008198 <CONSOLE_STATUS+0x188>
    80002a7c:	00000097          	auipc	ra,0x0
    80002a80:	7cc080e7          	jalr	1996(ra) # 80003248 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintInt(buddyAddr,16); KConsole::trapPrintString("\n");
    80002a84:	00000613          	li	a2,0
    80002a88:	01000593          	li	a1,16
    80002a8c:	00048513          	mv	a0,s1
    80002a90:	00000097          	auipc	ra,0x0
    80002a94:	7fc080e7          	jalr	2044(ra) # 8000328c <_ZN8KConsole12trapPrintIntEmii>
    80002a98:	00006517          	auipc	a0,0x6
    80002a9c:	b6850513          	addi	a0,a0,-1176 # 80008600 <CONSOLE_STATUS+0x5f0>
    80002aa0:	00000097          	auipc	ra,0x0
    80002aa4:	7a8080e7          	jalr	1960(ra) # 80003248 <_ZN8KConsole15trapPrintStringEPKc>
    numOfBlocks--; // take one block for buddy metadata
    80002aa8:	fff98993          	addi	s3,s3,-1
    buddyAllocator* buddy = (buddyAllocator*)buddyAddr;
    80002aac:	00048913          	mv	s2,s1
    return addr & mask;
    80002ab0:	fffff7b7          	lui	a5,0xfffff
    80002ab4:	00f4f7b3          	and	a5,s1,a5
    return currBlock + BLOCK_SIZE;
    80002ab8:	00001737          	lui	a4,0x1
    80002abc:	00e787b3          	add	a5,a5,a4
    buddy->startAddr = (void*)getNextBlockAddr(buddyAddr);
    80002ac0:	00f4b423          	sd	a5,8(s1) # 1008 <_entry-0x7fffeff8>
    buddy->numOfBlocks = numOfBlocks;
    80002ac4:	0134b023          	sd	s3,0(s1)
    buddy->numOfFreeBlocks = numOfBlocks;
    80002ac8:	0134b823          	sd	s3,16(s1)
    size_t deg = 0;
    80002acc:	00000793          	li	a5,0
    size_t x = 1;
    80002ad0:	00100713          	li	a4,1
    while(x <= num)
    80002ad4:	00e9e863          	bltu	s3,a4,80002ae4 <_Z10buddy_initPvm+0x10c>
        deg++;
    80002ad8:	00178793          	addi	a5,a5,1 # fffffffffffff001 <end+0xffffffff7ffef721>
        x<<=1;
    80002adc:	00171713          	slli	a4,a4,0x1
    while(x <= num)
    80002ae0:	ff5ff06f          	j	80002ad4 <_Z10buddy_initPvm+0xfc>
    return deg - 1;
    80002ae4:	fff78693          	addi	a3,a5,-1
    buddy->maxLevel = getDeg2Floor(numOfBlocks);
    80002ae8:	00d93c23          	sd	a3,24(s2)
    for(size_t i = 0; i <= buddy->maxLevel;i++)
    80002aec:	00000713          	li	a4,0
    80002af0:	02e6e063          	bltu	a3,a4,80002b10 <_Z10buddy_initPvm+0x138>
        buddy->bucket[i].first = buddy->bucket[i].last = nullptr;
    80002af4:	00270793          	addi	a5,a4,2 # 1002 <_entry-0x7fffeffe>
    80002af8:	00479793          	slli	a5,a5,0x4
    80002afc:	00f907b3          	add	a5,s2,a5
    80002b00:	0007b423          	sd	zero,8(a5)
    80002b04:	0007b023          	sd	zero,0(a5)
    for(size_t i = 0; i <= buddy->maxLevel;i++)
    80002b08:	00170713          	addi	a4,a4,1
    80002b0c:	fe5ff06f          	j	80002af0 <_Z10buddy_initPvm+0x118>
    for(size_t i = 0;i < numOfBlocks;i++)
    80002b10:	00000493          	li	s1,0
    80002b14:	0334f463          	bgeu	s1,s3,80002b3c <_Z10buddy_initPvm+0x164>
        addBlocks(buddy, (block*)buddy->startAddr + i, 1);
    80002b18:	00893583          	ld	a1,8(s2)
    80002b1c:	00c49793          	slli	a5,s1,0xc
    80002b20:	00100613          	li	a2,1
    80002b24:	00f585b3          	add	a1,a1,a5
    80002b28:	00090513          	mv	a0,s2
    80002b2c:	00000097          	auipc	ra,0x0
    80002b30:	cf8080e7          	jalr	-776(ra) # 80002824 <_Z9addBlocksP14buddyAllocatorPvm>
    for(size_t i = 0;i < numOfBlocks;i++)
    80002b34:	00148493          	addi	s1,s1,1
    80002b38:	fddff06f          	j	80002b14 <_Z10buddy_initPvm+0x13c>
}
    80002b3c:	00090513          	mv	a0,s2
    80002b40:	02813083          	ld	ra,40(sp)
    80002b44:	02013403          	ld	s0,32(sp)
    80002b48:	01813483          	ld	s1,24(sp)
    80002b4c:	01013903          	ld	s2,16(sp)
    80002b50:	00813983          	ld	s3,8(sp)
    80002b54:	00013a03          	ld	s4,0(sp)
    80002b58:	03010113          	addi	sp,sp,48
    80002b5c:	00008067          	ret

0000000080002b60 <_Z10buddy_freeP14buddyAllocatorPvm>:
{
    80002b60:	fd010113          	addi	sp,sp,-48
    80002b64:	02113423          	sd	ra,40(sp)
    80002b68:	02813023          	sd	s0,32(sp)
    80002b6c:	00913c23          	sd	s1,24(sp)
    80002b70:	01213823          	sd	s2,16(sp)
    80002b74:	01313423          	sd	s3,8(sp)
    80002b78:	03010413          	addi	s0,sp,48
    80002b7c:	00050993          	mv	s3,a0
    80002b80:	00058493          	mv	s1,a1
    80002b84:	00060913          	mv	s2,a2
    KConsole::trapPrintString("Buddy free: ");
    80002b88:	00005517          	auipc	a0,0x5
    80002b8c:	63050513          	addi	a0,a0,1584 # 800081b8 <CONSOLE_STATUS+0x1a8>
    80002b90:	00000097          	auipc	ra,0x0
    80002b94:	6b8080e7          	jalr	1720(ra) # 80003248 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintInt((size_t)addr,16); KConsole::trapPrintString(" ");
    80002b98:	00000613          	li	a2,0
    80002b9c:	01000593          	li	a1,16
    80002ba0:	00048513          	mv	a0,s1
    80002ba4:	00000097          	auipc	ra,0x0
    80002ba8:	6e8080e7          	jalr	1768(ra) # 8000328c <_ZN8KConsole12trapPrintIntEmii>
    80002bac:	00005517          	auipc	a0,0x5
    80002bb0:	5cc50513          	addi	a0,a0,1484 # 80008178 <CONSOLE_STATUS+0x168>
    80002bb4:	00000097          	auipc	ra,0x0
    80002bb8:	694080e7          	jalr	1684(ra) # 80003248 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintInt(numOfBlocks); KConsole::trapPrintString("\n");
    80002bbc:	00000613          	li	a2,0
    80002bc0:	00a00593          	li	a1,10
    80002bc4:	00090513          	mv	a0,s2
    80002bc8:	00000097          	auipc	ra,0x0
    80002bcc:	6c4080e7          	jalr	1732(ra) # 8000328c <_ZN8KConsole12trapPrintIntEmii>
    80002bd0:	00006517          	auipc	a0,0x6
    80002bd4:	a3050513          	addi	a0,a0,-1488 # 80008600 <CONSOLE_STATUS+0x5f0>
    80002bd8:	00000097          	auipc	ra,0x0
    80002bdc:	670080e7          	jalr	1648(ra) # 80003248 <_ZN8KConsole15trapPrintStringEPKc>
    addBlocks(buddy, addr, numOfBlocks); //adds free blocks
    80002be0:	00090613          	mv	a2,s2
    80002be4:	00048593          	mv	a1,s1
    80002be8:	00098513          	mv	a0,s3
    80002bec:	00000097          	auipc	ra,0x0
    80002bf0:	c38080e7          	jalr	-968(ra) # 80002824 <_Z9addBlocksP14buddyAllocatorPvm>
}
    80002bf4:	02813083          	ld	ra,40(sp)
    80002bf8:	02013403          	ld	s0,32(sp)
    80002bfc:	01813483          	ld	s1,24(sp)
    80002c00:	01013903          	ld	s2,16(sp)
    80002c04:	00813983          	ld	s3,8(sp)
    80002c08:	03010113          	addi	sp,sp,48
    80002c0c:	00008067          	ret

0000000080002c10 <_Z14printBuddyInfoP14buddyAllocator>:

void printBuddyInfo(buddyAllocator* buddy)
{
    80002c10:	fd010113          	addi	sp,sp,-48
    80002c14:	02113423          	sd	ra,40(sp)
    80002c18:	02813023          	sd	s0,32(sp)
    80002c1c:	00913c23          	sd	s1,24(sp)
    80002c20:	01213823          	sd	s2,16(sp)
    80002c24:	01313423          	sd	s3,8(sp)
    80002c28:	03010413          	addi	s0,sp,48
    80002c2c:	00050993          	mv	s3,a0
    KConsole::trapPrintString("Buddy info-------------------------------------------\n");
    80002c30:	00005517          	auipc	a0,0x5
    80002c34:	59850513          	addi	a0,a0,1432 # 800081c8 <CONSOLE_STATUS+0x1b8>
    80002c38:	00000097          	auipc	ra,0x0
    80002c3c:	610080e7          	jalr	1552(ra) # 80003248 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Buddy starting address ");
    80002c40:	00005517          	auipc	a0,0x5
    80002c44:	5c050513          	addi	a0,a0,1472 # 80008200 <CONSOLE_STATUS+0x1f0>
    80002c48:	00000097          	auipc	ra,0x0
    80002c4c:	600080e7          	jalr	1536(ra) # 80003248 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintInt((size_t)buddy->startAddr, 16);KConsole::trapPrintString("\n");
    80002c50:	00000613          	li	a2,0
    80002c54:	01000593          	li	a1,16
    80002c58:	0089b503          	ld	a0,8(s3)
    80002c5c:	00000097          	auipc	ra,0x0
    80002c60:	630080e7          	jalr	1584(ra) # 8000328c <_ZN8KConsole12trapPrintIntEmii>
    80002c64:	00006517          	auipc	a0,0x6
    80002c68:	99c50513          	addi	a0,a0,-1636 # 80008600 <CONSOLE_STATUS+0x5f0>
    80002c6c:	00000097          	auipc	ra,0x0
    80002c70:	5dc080e7          	jalr	1500(ra) # 80003248 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Buddy number of blocks ");
    80002c74:	00005517          	auipc	a0,0x5
    80002c78:	5a450513          	addi	a0,a0,1444 # 80008218 <CONSOLE_STATUS+0x208>
    80002c7c:	00000097          	auipc	ra,0x0
    80002c80:	5cc080e7          	jalr	1484(ra) # 80003248 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintInt(buddy->numOfBlocks);KConsole::trapPrintString("\n");
    80002c84:	00000613          	li	a2,0
    80002c88:	00a00593          	li	a1,10
    80002c8c:	0009b503          	ld	a0,0(s3)
    80002c90:	00000097          	auipc	ra,0x0
    80002c94:	5fc080e7          	jalr	1532(ra) # 8000328c <_ZN8KConsole12trapPrintIntEmii>
    80002c98:	00006517          	auipc	a0,0x6
    80002c9c:	96850513          	addi	a0,a0,-1688 # 80008600 <CONSOLE_STATUS+0x5f0>
    80002ca0:	00000097          	auipc	ra,0x0
    80002ca4:	5a8080e7          	jalr	1448(ra) # 80003248 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Buddy number of free blocks ");
    80002ca8:	00005517          	auipc	a0,0x5
    80002cac:	58850513          	addi	a0,a0,1416 # 80008230 <CONSOLE_STATUS+0x220>
    80002cb0:	00000097          	auipc	ra,0x0
    80002cb4:	598080e7          	jalr	1432(ra) # 80003248 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintInt(buddy->numOfFreeBlocks); KConsole::trapPrintString("\n");
    80002cb8:	00000613          	li	a2,0
    80002cbc:	00a00593          	li	a1,10
    80002cc0:	0109b503          	ld	a0,16(s3)
    80002cc4:	00000097          	auipc	ra,0x0
    80002cc8:	5c8080e7          	jalr	1480(ra) # 8000328c <_ZN8KConsole12trapPrintIntEmii>
    80002ccc:	00006517          	auipc	a0,0x6
    80002cd0:	93450513          	addi	a0,a0,-1740 # 80008600 <CONSOLE_STATUS+0x5f0>
    80002cd4:	00000097          	auipc	ra,0x0
    80002cd8:	574080e7          	jalr	1396(ra) # 80003248 <_ZN8KConsole15trapPrintStringEPKc>
    for(int i = buddy->maxLevel;i>=0;i--)
    80002cdc:	0189a903          	lw	s2,24(s3)
    80002ce0:	0080006f          	j	80002ce8 <_Z14printBuddyInfoP14buddyAllocator+0xd8>
    80002ce4:	fff9091b          	addiw	s2,s2,-1
    80002ce8:	08094463          	bltz	s2,80002d70 <_Z14printBuddyInfoP14buddyAllocator+0x160>
    {
        KConsole::trapPrintString("Level ");
    80002cec:	00005517          	auipc	a0,0x5
    80002cf0:	56450513          	addi	a0,a0,1380 # 80008250 <CONSOLE_STATUS+0x240>
    80002cf4:	00000097          	auipc	ra,0x0
    80002cf8:	554080e7          	jalr	1364(ra) # 80003248 <_ZN8KConsole15trapPrintStringEPKc>
        KConsole::trapPrintInt(i);KConsole::trapPrintString("\n");
    80002cfc:	00000613          	li	a2,0
    80002d00:	00a00593          	li	a1,10
    80002d04:	00090513          	mv	a0,s2
    80002d08:	00000097          	auipc	ra,0x0
    80002d0c:	584080e7          	jalr	1412(ra) # 8000328c <_ZN8KConsole12trapPrintIntEmii>
    80002d10:	00006517          	auipc	a0,0x6
    80002d14:	8f050513          	addi	a0,a0,-1808 # 80008600 <CONSOLE_STATUS+0x5f0>
    80002d18:	00000097          	auipc	ra,0x0
    80002d1c:	530080e7          	jalr	1328(ra) # 80003248 <_ZN8KConsole15trapPrintStringEPKc>
        KConsole::trapPrintString("Free blocks on this level\n");
    80002d20:	00005517          	auipc	a0,0x5
    80002d24:	53850513          	addi	a0,a0,1336 # 80008258 <CONSOLE_STATUS+0x248>
    80002d28:	00000097          	auipc	ra,0x0
    80002d2c:	520080e7          	jalr	1312(ra) # 80003248 <_ZN8KConsole15trapPrintStringEPKc>
        buddyBlock* curr = buddy->bucket[i].first;
    80002d30:	00290793          	addi	a5,s2,2
    80002d34:	00479793          	slli	a5,a5,0x4
    80002d38:	00f987b3          	add	a5,s3,a5
    80002d3c:	0007b483          	ld	s1,0(a5)
        while(curr != 0)
    80002d40:	fa0482e3          	beqz	s1,80002ce4 <_Z14printBuddyInfoP14buddyAllocator+0xd4>
        {
            KConsole::trapPrintInt((size_t)curr, 16);
    80002d44:	00000613          	li	a2,0
    80002d48:	01000593          	li	a1,16
    80002d4c:	00048513          	mv	a0,s1
    80002d50:	00000097          	auipc	ra,0x0
    80002d54:	53c080e7          	jalr	1340(ra) # 8000328c <_ZN8KConsole12trapPrintIntEmii>
            KConsole::trapPrintString("\n");
    80002d58:	00006517          	auipc	a0,0x6
    80002d5c:	8a850513          	addi	a0,a0,-1880 # 80008600 <CONSOLE_STATUS+0x5f0>
    80002d60:	00000097          	auipc	ra,0x0
    80002d64:	4e8080e7          	jalr	1256(ra) # 80003248 <_ZN8KConsole15trapPrintStringEPKc>
            curr = curr->next;
    80002d68:	0004b483          	ld	s1,0(s1)
        while(curr != 0)
    80002d6c:	fd5ff06f          	j	80002d40 <_Z14printBuddyInfoP14buddyAllocator+0x130>
        }
    }
    KConsole::trapPrintString("End of buddy info-------------------------------------------\n");
    80002d70:	00005517          	auipc	a0,0x5
    80002d74:	50850513          	addi	a0,a0,1288 # 80008278 <CONSOLE_STATUS+0x268>
    80002d78:	00000097          	auipc	ra,0x0
    80002d7c:	4d0080e7          	jalr	1232(ra) # 80003248 <_ZN8KConsole15trapPrintStringEPKc>
    80002d80:	02813083          	ld	ra,40(sp)
    80002d84:	02013403          	ld	s0,32(sp)
    80002d88:	01813483          	ld	s1,24(sp)
    80002d8c:	01013903          	ld	s2,16(sp)
    80002d90:	00813983          	ld	s3,8(sp)
    80002d94:	03010113          	addi	sp,sp,48
    80002d98:	00008067          	ret

0000000080002d9c <_ZN8KConsole10initializeEv>:
char KConsole::inputBuffer[bufferSize];
char KConsole::outputBuffer[bufferSize];
uint64 KConsole::pendingPutc = 0;

void KConsole::initialize()
{
    80002d9c:	fe010113          	addi	sp,sp,-32
    80002da0:	00113c23          	sd	ra,24(sp)
    80002da4:	00813823          	sd	s0,16(sp)
    80002da8:	00913423          	sd	s1,8(sp)
    80002dac:	01213023          	sd	s2,0(sp)
    80002db0:	02010413          	addi	s0,sp,32
    hasCharactersInput = new KSemaphore(0);
    80002db4:	01800513          	li	a0,24
    80002db8:	00002097          	auipc	ra,0x2
    80002dbc:	a88080e7          	jalr	-1400(ra) # 80004840 <_ZN10KSemaphorenwEm>
    80002dc0:	00050493          	mv	s1,a0
    80002dc4:	00000593          	li	a1,0
    80002dc8:	00002097          	auipc	ra,0x2
    80002dcc:	814080e7          	jalr	-2028(ra) # 800045dc <_ZN10KSemaphoreC1Ei>
    80002dd0:	00008797          	auipc	a5,0x8
    80002dd4:	8297b023          	sd	s1,-2016(a5) # 8000a5f0 <_ZN8KConsole18hasCharactersInputE>
    hasCharactersOutput = new KSemaphore(0);
    80002dd8:	01800513          	li	a0,24
    80002ddc:	00002097          	auipc	ra,0x2
    80002de0:	a64080e7          	jalr	-1436(ra) # 80004840 <_ZN10KSemaphorenwEm>
    80002de4:	00050493          	mv	s1,a0
    80002de8:	00000593          	li	a1,0
    80002dec:	00001097          	auipc	ra,0x1
    80002df0:	7f0080e7          	jalr	2032(ra) # 800045dc <_ZN10KSemaphoreC1Ei>
    80002df4:	00008797          	auipc	a5,0x8
    80002df8:	8097b223          	sd	s1,-2044(a5) # 8000a5f8 <_ZN8KConsole19hasCharactersOutputE>
}
    80002dfc:	01813083          	ld	ra,24(sp)
    80002e00:	01013403          	ld	s0,16(sp)
    80002e04:	00813483          	ld	s1,8(sp)
    80002e08:	00013903          	ld	s2,0(sp)
    80002e0c:	02010113          	addi	sp,sp,32
    80002e10:	00008067          	ret
    80002e14:	00050913          	mv	s2,a0
    hasCharactersInput = new KSemaphore(0);
    80002e18:	00048513          	mv	a0,s1
    80002e1c:	00002097          	auipc	ra,0x2
    80002e20:	ac4080e7          	jalr	-1340(ra) # 800048e0 <_ZN10KSemaphoredlEPv>
    80002e24:	00090513          	mv	a0,s2
    80002e28:	0000d097          	auipc	ra,0xd
    80002e2c:	920080e7          	jalr	-1760(ra) # 8000f748 <_Unwind_Resume>
    80002e30:	00050913          	mv	s2,a0
    hasCharactersOutput = new KSemaphore(0);
    80002e34:	00048513          	mv	a0,s1
    80002e38:	00002097          	auipc	ra,0x2
    80002e3c:	aa8080e7          	jalr	-1368(ra) # 800048e0 <_ZN10KSemaphoredlEPv>
    80002e40:	00090513          	mv	a0,s2
    80002e44:	0000d097          	auipc	ra,0xd
    80002e48:	904080e7          	jalr	-1788(ra) # 8000f748 <_Unwind_Resume>

0000000080002e4c <_ZN8KConsole17putCharacterInputEc>:
    }
}

void KConsole::putCharacterInput(char c)
{
    if((inputTail+1)%bufferSize == inputHead)
    80002e4c:	00007697          	auipc	a3,0x7
    80002e50:	7a468693          	addi	a3,a3,1956 # 8000a5f0 <_ZN8KConsole18hasCharactersInputE>
    80002e54:	0106b603          	ld	a2,16(a3)
    80002e58:	00160793          	addi	a5,a2,1
    80002e5c:	00002737          	lui	a4,0x2
    80002e60:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    80002e64:	00e7f7b3          	and	a5,a5,a4
    80002e68:	0186b703          	ld	a4,24(a3)
    80002e6c:	04e78263          	beq	a5,a4,80002eb0 <_ZN8KConsole17putCharacterInputEc+0x64>
{
    80002e70:	ff010113          	addi	sp,sp,-16
    80002e74:	00113423          	sd	ra,8(sp)
    80002e78:	00813023          	sd	s0,0(sp)
    80002e7c:	01010413          	addi	s0,sp,16
        return;
    inputBuffer[inputTail] = c;
    80002e80:	00009717          	auipc	a4,0x9
    80002e84:	7b070713          	addi	a4,a4,1968 # 8000c630 <_ZN8KConsole11inputBufferE>
    80002e88:	00c70633          	add	a2,a4,a2
    80002e8c:	00a60023          	sb	a0,0(a2)
    inputTail = (inputTail+1)%bufferSize;
    80002e90:	00f6b823          	sd	a5,16(a3)
    hasCharactersInput->signal();
    80002e94:	0006b503          	ld	a0,0(a3)
    80002e98:	00002097          	auipc	ra,0x2
    80002e9c:	960080e7          	jalr	-1696(ra) # 800047f8 <_ZN10KSemaphore6signalEv>
}
    80002ea0:	00813083          	ld	ra,8(sp)
    80002ea4:	00013403          	ld	s0,0(sp)
    80002ea8:	01010113          	addi	sp,sp,16
    80002eac:	00008067          	ret
    80002eb0:	00008067          	ret

0000000080002eb4 <_ZN8KConsole24getCharactersFromConsoleEv>:
    uint64 operation = *(uint8*)CONSOLE_STATUS;
    80002eb4:	00007797          	auipc	a5,0x7
    80002eb8:	6547b783          	ld	a5,1620(a5) # 8000a508 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002ebc:	0007b783          	ld	a5,0(a5)
    80002ec0:	0007c783          	lbu	a5,0(a5)
    if(operation & KConsole::STATUS_READ_MASK)
    80002ec4:	0017f793          	andi	a5,a5,1
    80002ec8:	02078063          	beqz	a5,80002ee8 <_ZN8KConsole24getCharactersFromConsoleEv+0x34>
        char c = *(uint8*)CONSOLE_TX_DATA;
    80002ecc:	00007797          	auipc	a5,0x7
    80002ed0:	65c7b783          	ld	a5,1628(a5) # 8000a528 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002ed4:	0007b783          	ld	a5,0(a5)
    80002ed8:	0007c503          	lbu	a0,0(a5)
        if(KConsole::pendingGetc > 0)
    80002edc:	00007797          	auipc	a5,0x7
    80002ee0:	7347b783          	ld	a5,1844(a5) # 8000a610 <_ZN8KConsole11pendingGetcE>
    80002ee4:	00079463          	bnez	a5,80002eec <_ZN8KConsole24getCharactersFromConsoleEv+0x38>
    80002ee8:	00008067          	ret
{
    80002eec:	ff010113          	addi	sp,sp,-16
    80002ef0:	00113423          	sd	ra,8(sp)
    80002ef4:	00813023          	sd	s0,0(sp)
    80002ef8:	01010413          	addi	s0,sp,16
            KConsole::pendingGetc--;
    80002efc:	fff78793          	addi	a5,a5,-1
    80002f00:	00007717          	auipc	a4,0x7
    80002f04:	70f73823          	sd	a5,1808(a4) # 8000a610 <_ZN8KConsole11pendingGetcE>
            KConsole::putCharacterInput(c);
    80002f08:	00000097          	auipc	ra,0x0
    80002f0c:	f44080e7          	jalr	-188(ra) # 80002e4c <_ZN8KConsole17putCharacterInputEc>
}
    80002f10:	00813083          	ld	ra,8(sp)
    80002f14:	00013403          	ld	s0,0(sp)
    80002f18:	01010113          	addi	sp,sp,16
    80002f1c:	00008067          	ret

0000000080002f20 <_ZN8KConsole17getCharacterInputEv>:

char KConsole::getCharacterInput()
{
    80002f20:	fe010113          	addi	sp,sp,-32
    80002f24:	00113c23          	sd	ra,24(sp)
    80002f28:	00813823          	sd	s0,16(sp)
    80002f2c:	00913423          	sd	s1,8(sp)
    80002f30:	02010413          	addi	s0,sp,32
    hasCharactersInput->wait();
    80002f34:	00007497          	auipc	s1,0x7
    80002f38:	6bc48493          	addi	s1,s1,1724 # 8000a5f0 <_ZN8KConsole18hasCharactersInputE>
    80002f3c:	0004b503          	ld	a0,0(s1)
    80002f40:	00001097          	auipc	ra,0x1
    80002f44:	740080e7          	jalr	1856(ra) # 80004680 <_ZN10KSemaphore4waitEv>
    if(inputHead == inputTail)
    80002f48:	0184b783          	ld	a5,24(s1)
    80002f4c:	0104b703          	ld	a4,16(s1)
    80002f50:	04e78063          	beq	a5,a4,80002f90 <_ZN8KConsole17getCharacterInputEv+0x70>
        return -1;
    char c = inputBuffer[inputHead];
    80002f54:	00009717          	auipc	a4,0x9
    80002f58:	6dc70713          	addi	a4,a4,1756 # 8000c630 <_ZN8KConsole11inputBufferE>
    80002f5c:	00f70733          	add	a4,a4,a5
    80002f60:	00074503          	lbu	a0,0(a4)
    inputHead = (inputHead+1)%bufferSize;
    80002f64:	00178793          	addi	a5,a5,1
    80002f68:	00002737          	lui	a4,0x2
    80002f6c:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    80002f70:	00e7f7b3          	and	a5,a5,a4
    80002f74:	00007717          	auipc	a4,0x7
    80002f78:	68f73a23          	sd	a5,1684(a4) # 8000a608 <_ZN8KConsole9inputHeadE>
    return c;
}
    80002f7c:	01813083          	ld	ra,24(sp)
    80002f80:	01013403          	ld	s0,16(sp)
    80002f84:	00813483          	ld	s1,8(sp)
    80002f88:	02010113          	addi	sp,sp,32
    80002f8c:	00008067          	ret
        return -1;
    80002f90:	0ff00513          	li	a0,255
    80002f94:	fe9ff06f          	j	80002f7c <_ZN8KConsole17getCharacterInputEv+0x5c>

0000000080002f98 <_ZN8KConsole18putCharacterOutputEc>:

void KConsole::putCharacterOutput(char c)
{
    if((outputTail+1)%bufferSize == outputHead)
    80002f98:	00007697          	auipc	a3,0x7
    80002f9c:	65868693          	addi	a3,a3,1624 # 8000a5f0 <_ZN8KConsole18hasCharactersInputE>
    80002fa0:	0286b603          	ld	a2,40(a3)
    80002fa4:	00160793          	addi	a5,a2,1
    80002fa8:	00002737          	lui	a4,0x2
    80002fac:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    80002fb0:	00e7f7b3          	and	a5,a5,a4
    80002fb4:	0306b703          	ld	a4,48(a3)
    80002fb8:	04e78a63          	beq	a5,a4,8000300c <_ZN8KConsole18putCharacterOutputEc+0x74>
{
    80002fbc:	ff010113          	addi	sp,sp,-16
    80002fc0:	00113423          	sd	ra,8(sp)
    80002fc4:	00813023          	sd	s0,0(sp)
    80002fc8:	01010413          	addi	s0,sp,16
        return;
    pendingPutc++;
    80002fcc:	00068713          	mv	a4,a3
    80002fd0:	0386b683          	ld	a3,56(a3)
    80002fd4:	00168693          	addi	a3,a3,1
    80002fd8:	02d73c23          	sd	a3,56(a4)
    outputBuffer[outputTail] = c;
    80002fdc:	00007697          	auipc	a3,0x7
    80002fe0:	65468693          	addi	a3,a3,1620 # 8000a630 <_ZN8KConsole12outputBufferE>
    80002fe4:	00c68633          	add	a2,a3,a2
    80002fe8:	00a60023          	sb	a0,0(a2)
    outputTail = (outputTail+1)%bufferSize;
    80002fec:	02f73423          	sd	a5,40(a4)
    hasCharactersOutput->signal();
    80002ff0:	00873503          	ld	a0,8(a4)
    80002ff4:	00002097          	auipc	ra,0x2
    80002ff8:	804080e7          	jalr	-2044(ra) # 800047f8 <_ZN10KSemaphore6signalEv>
}
    80002ffc:	00813083          	ld	ra,8(sp)
    80003000:	00013403          	ld	s0,0(sp)
    80003004:	01010113          	addi	sp,sp,16
    80003008:	00008067          	ret
    8000300c:	00008067          	ret

0000000080003010 <_ZN8KConsole18getCharacterOutputEv>:

char KConsole::getCharacterOutput()
{
    80003010:	fe010113          	addi	sp,sp,-32
    80003014:	00113c23          	sd	ra,24(sp)
    80003018:	00813823          	sd	s0,16(sp)
    8000301c:	00913423          	sd	s1,8(sp)
    80003020:	02010413          	addi	s0,sp,32
    hasCharactersOutput->wait();
    80003024:	00007497          	auipc	s1,0x7
    80003028:	5cc48493          	addi	s1,s1,1484 # 8000a5f0 <_ZN8KConsole18hasCharactersInputE>
    8000302c:	0084b503          	ld	a0,8(s1)
    80003030:	00001097          	auipc	ra,0x1
    80003034:	650080e7          	jalr	1616(ra) # 80004680 <_ZN10KSemaphore4waitEv>
    if(outputHead == outputTail)
    80003038:	0304b783          	ld	a5,48(s1)
    8000303c:	0284b703          	ld	a4,40(s1)
    80003040:	04e78063          	beq	a5,a4,80003080 <_ZN8KConsole18getCharacterOutputEv+0x70>
        return -1;
    char c = outputBuffer[outputHead];
    80003044:	00007717          	auipc	a4,0x7
    80003048:	5ec70713          	addi	a4,a4,1516 # 8000a630 <_ZN8KConsole12outputBufferE>
    8000304c:	00f70733          	add	a4,a4,a5
    80003050:	00074503          	lbu	a0,0(a4)
    outputHead = (outputHead+1)%bufferSize;
    80003054:	00178793          	addi	a5,a5,1
    80003058:	00002737          	lui	a4,0x2
    8000305c:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    80003060:	00e7f7b3          	and	a5,a5,a4
    80003064:	00007717          	auipc	a4,0x7
    80003068:	5af73e23          	sd	a5,1468(a4) # 8000a620 <_ZN8KConsole10outputHeadE>
    return c;
}
    8000306c:	01813083          	ld	ra,24(sp)
    80003070:	01013403          	ld	s0,16(sp)
    80003074:	00813483          	ld	s1,8(sp)
    80003078:	02010113          	addi	sp,sp,32
    8000307c:	00008067          	ret
        return -1;
    80003080:	0ff00513          	li	a0,255
    80003084:	fe9ff06f          	j	8000306c <_ZN8KConsole18getCharacterOutputEv+0x5c>

0000000080003088 <_ZN8KConsole11putcHandlerEv>:

void KConsole::putcHandler()
{
    80003088:	ff010113          	addi	sp,sp,-16
    8000308c:	00113423          	sd	ra,8(sp)
    80003090:	00813023          	sd	s0,0(sp)
    80003094:	01010413          	addi	s0,sp,16
    uint64 ch;
    __asm__ volatile("mv %0, a1" : "=r"(ch));
    80003098:	00058513          	mv	a0,a1
    putCharacterOutput((char)ch);
    8000309c:	0ff57513          	andi	a0,a0,255
    800030a0:	00000097          	auipc	ra,0x0
    800030a4:	ef8080e7          	jalr	-264(ra) # 80002f98 <_ZN8KConsole18putCharacterOutputEc>
}
    800030a8:	00813083          	ld	ra,8(sp)
    800030ac:	00013403          	ld	s0,0(sp)
    800030b0:	01010113          	addi	sp,sp,16
    800030b4:	00008067          	ret

00000000800030b8 <_ZN8KConsole11getcHandlerEv>:

void KConsole::getcHandler()
{
    800030b8:	fe010113          	addi	sp,sp,-32
    800030bc:	00113c23          	sd	ra,24(sp)
    800030c0:	00813823          	sd	s0,16(sp)
    800030c4:	00913423          	sd	s1,8(sp)
    800030c8:	02010413          	addi	s0,sp,32
    pendingGetc++;
    800030cc:	00007717          	auipc	a4,0x7
    800030d0:	52470713          	addi	a4,a4,1316 # 8000a5f0 <_ZN8KConsole18hasCharactersInputE>
    800030d4:	02073783          	ld	a5,32(a4)
    800030d8:	00178793          	addi	a5,a5,1
    800030dc:	02f73023          	sd	a5,32(a4)
    char ch;
    ch = getCharacterInput();
    800030e0:	00000097          	auipc	ra,0x0
    800030e4:	e40080e7          	jalr	-448(ra) # 80002f20 <_ZN8KConsole17getCharacterInputEv>
    800030e8:	00050493          	mv	s1,a0
    if(ch!=0x01b)
    800030ec:	01b00793          	li	a5,27
    800030f0:	02f51663          	bne	a0,a5,8000311c <_ZN8KConsole11getcHandlerEv+0x64>
        putCharacterOutput(ch);

    if(ch==13)
    800030f4:	00d00793          	li	a5,13
    800030f8:	02f48863          	beq	s1,a5,80003128 <_ZN8KConsole11getcHandlerEv+0x70>
    {
        putCharacterOutput(13);
        putCharacterOutput(10);
    }

    __asm__ volatile("mv a0, %0" : :"r"((uint64)ch));
    800030fc:	00048513          	mv	a0,s1
    Riscv::w_a0_sscratch();
    80003100:	00001097          	auipc	ra,0x1
    80003104:	ca8080e7          	jalr	-856(ra) # 80003da8 <_ZN5Riscv13w_a0_sscratchEv>
}
    80003108:	01813083          	ld	ra,24(sp)
    8000310c:	01013403          	ld	s0,16(sp)
    80003110:	00813483          	ld	s1,8(sp)
    80003114:	02010113          	addi	sp,sp,32
    80003118:	00008067          	ret
        putCharacterOutput(ch);
    8000311c:	00000097          	auipc	ra,0x0
    80003120:	e7c080e7          	jalr	-388(ra) # 80002f98 <_ZN8KConsole18putCharacterOutputEc>
    80003124:	fd1ff06f          	j	800030f4 <_ZN8KConsole11getcHandlerEv+0x3c>
        putCharacterOutput(13);
    80003128:	00d00513          	li	a0,13
    8000312c:	00000097          	auipc	ra,0x0
    80003130:	e6c080e7          	jalr	-404(ra) # 80002f98 <_ZN8KConsole18putCharacterOutputEc>
        putCharacterOutput(10);
    80003134:	00a00513          	li	a0,10
    80003138:	00000097          	auipc	ra,0x0
    8000313c:	e60080e7          	jalr	-416(ra) # 80002f98 <_ZN8KConsole18putCharacterOutputEc>
    80003140:	fbdff06f          	j	800030fc <_ZN8KConsole11getcHandlerEv+0x44>

0000000080003144 <_ZN8KConsole17outputBufferEmptyEv>:

bool KConsole::outputBufferEmpty()
{
    80003144:	ff010113          	addi	sp,sp,-16
    80003148:	00813423          	sd	s0,8(sp)
    8000314c:	01010413          	addi	s0,sp,16
    return pendingPutc == 0;
}
    80003150:	00007517          	auipc	a0,0x7
    80003154:	4d853503          	ld	a0,1240(a0) # 8000a628 <_ZN8KConsole11pendingPutcE>
    80003158:	00153513          	seqz	a0,a0
    8000315c:	00813403          	ld	s0,8(sp)
    80003160:	01010113          	addi	sp,sp,16
    80003164:	00008067          	ret

0000000080003168 <_ZN8KConsole23sendCharactersToConsoleEPv>:
{
    80003168:	fe010113          	addi	sp,sp,-32
    8000316c:	00113c23          	sd	ra,24(sp)
    80003170:	00813823          	sd	s0,16(sp)
    80003174:	02010413          	addi	s0,sp,32
    80003178:	0180006f          	j	80003190 <_ZN8KConsole23sendCharactersToConsoleEPv+0x28>
                thread_exit();
    8000317c:	fffff097          	auipc	ra,0xfffff
    80003180:	ba8080e7          	jalr	-1112(ra) # 80001d24 <_Z11thread_exitv>
    80003184:	0340006f          	j	800031b8 <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
                thread_dispatch();
    80003188:	fffff097          	auipc	ra,0xfffff
    8000318c:	b7c080e7          	jalr	-1156(ra) # 80001d04 <_Z15thread_dispatchv>
            if(Riscv::finishSystem && KConsole::outputBufferEmpty() && pendingGetc == 0)
    80003190:	00007797          	auipc	a5,0x7
    80003194:	3c87b783          	ld	a5,968(a5) # 8000a558 <_GLOBAL_OFFSET_TABLE_+0x60>
    80003198:	0007c783          	lbu	a5,0(a5)
    8000319c:	00078e63          	beqz	a5,800031b8 <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
    800031a0:	00000097          	auipc	ra,0x0
    800031a4:	fa4080e7          	jalr	-92(ra) # 80003144 <_ZN8KConsole17outputBufferEmptyEv>
    800031a8:	00050863          	beqz	a0,800031b8 <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
    800031ac:	00007797          	auipc	a5,0x7
    800031b0:	4647b783          	ld	a5,1124(a5) # 8000a610 <_ZN8KConsole11pendingGetcE>
    800031b4:	fc0784e3          	beqz	a5,8000317c <_ZN8KConsole23sendCharactersToConsoleEPv+0x14>
            uint64 operation = *(uint8*)CONSOLE_STATUS;
    800031b8:	00007797          	auipc	a5,0x7
    800031bc:	3507b783          	ld	a5,848(a5) # 8000a508 <_GLOBAL_OFFSET_TABLE_+0x10>
    800031c0:	0007b783          	ld	a5,0(a5)
    800031c4:	0007c783          	lbu	a5,0(a5)
            if ((operation & STATUS_WRITE_MASK) && pendingPutc > 0)
    800031c8:	0207f793          	andi	a5,a5,32
    800031cc:	fa078ee3          	beqz	a5,80003188 <_ZN8KConsole23sendCharactersToConsoleEPv+0x20>
    800031d0:	00007797          	auipc	a5,0x7
    800031d4:	4587b783          	ld	a5,1112(a5) # 8000a628 <_ZN8KConsole11pendingPutcE>
    800031d8:	fa0788e3          	beqz	a5,80003188 <_ZN8KConsole23sendCharactersToConsoleEPv+0x20>
                char volatile c = sysCallGetCharOutput();
    800031dc:	fffff097          	auipc	ra,0xfffff
    800031e0:	d50080e7          	jalr	-688(ra) # 80001f2c <_Z20sysCallGetCharOutputv>
    800031e4:	fea407a3          	sb	a0,-17(s0)
                pendingPutc--;
    800031e8:	00007717          	auipc	a4,0x7
    800031ec:	40870713          	addi	a4,a4,1032 # 8000a5f0 <_ZN8KConsole18hasCharactersInputE>
    800031f0:	03873783          	ld	a5,56(a4)
    800031f4:	fff78793          	addi	a5,a5,-1
    800031f8:	02f73c23          	sd	a5,56(a4)
                *(uint8*)CONSOLE_RX_DATA = c;
    800031fc:	00007797          	auipc	a5,0x7
    80003200:	3047b783          	ld	a5,772(a5) # 8000a500 <_GLOBAL_OFFSET_TABLE_+0x8>
    80003204:	0007b783          	ld	a5,0(a5)
    80003208:	fef44703          	lbu	a4,-17(s0)
    8000320c:	00e78023          	sb	a4,0(a5)
    80003210:	f81ff06f          	j	80003190 <_ZN8KConsole23sendCharactersToConsoleEPv+0x28>

0000000080003214 <_ZN8KConsole14getCharHandlerEv>:

void KConsole::getCharHandler()
{
    80003214:	ff010113          	addi	sp,sp,-16
    80003218:	00113423          	sd	ra,8(sp)
    8000321c:	00813023          	sd	s0,0(sp)
    80003220:	01010413          	addi	s0,sp,16
    char ch;
    ch = getCharacterOutput();
    80003224:	00000097          	auipc	ra,0x0
    80003228:	dec080e7          	jalr	-532(ra) # 80003010 <_ZN8KConsole18getCharacterOutputEv>
    __asm__ volatile("mv a0, %0" : :"r"((uint64)ch));
    8000322c:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    80003230:	00001097          	auipc	ra,0x1
    80003234:	b78080e7          	jalr	-1160(ra) # 80003da8 <_ZN5Riscv13w_a0_sscratchEv>
}
    80003238:	00813083          	ld	ra,8(sp)
    8000323c:	00013403          	ld	s0,0(sp)
    80003240:	01010113          	addi	sp,sp,16
    80003244:	00008067          	ret

0000000080003248 <_ZN8KConsole15trapPrintStringEPKc>:

void KConsole::trapPrintString(const char *string)
{
    80003248:	fe010113          	addi	sp,sp,-32
    8000324c:	00113c23          	sd	ra,24(sp)
    80003250:	00813823          	sd	s0,16(sp)
    80003254:	00913423          	sd	s1,8(sp)
    80003258:	02010413          	addi	s0,sp,32
    8000325c:	00050493          	mv	s1,a0
    while (*string != '\0')
    80003260:	0004c503          	lbu	a0,0(s1)
    80003264:	00050a63          	beqz	a0,80003278 <_ZN8KConsole15trapPrintStringEPKc+0x30>
    {
        KConsole::putCharacterOutput(*string);
    80003268:	00000097          	auipc	ra,0x0
    8000326c:	d30080e7          	jalr	-720(ra) # 80002f98 <_ZN8KConsole18putCharacterOutputEc>
        string++;
    80003270:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80003274:	fedff06f          	j	80003260 <_ZN8KConsole15trapPrintStringEPKc+0x18>
    }
}
    80003278:	01813083          	ld	ra,24(sp)
    8000327c:	01013403          	ld	s0,16(sp)
    80003280:	00813483          	ld	s1,8(sp)
    80003284:	02010113          	addi	sp,sp,32
    80003288:	00008067          	ret

000000008000328c <_ZN8KConsole12trapPrintIntEmii>:

void KConsole::trapPrintInt(size_t xx, int base, int sgn)
{
    8000328c:	fb010113          	addi	sp,sp,-80
    80003290:	04113423          	sd	ra,72(sp)
    80003294:	04813023          	sd	s0,64(sp)
    80003298:	02913c23          	sd	s1,56(sp)
    8000329c:	05010413          	addi	s0,sp,80
    char digits[] = "0123456789ABCDEF";
    800032a0:	00005797          	auipc	a5,0x5
    800032a4:	01878793          	addi	a5,a5,24 # 800082b8 <CONSOLE_STATUS+0x2a8>
    800032a8:	0007b703          	ld	a4,0(a5)
    800032ac:	fce43423          	sd	a4,-56(s0)
    800032b0:	0087b703          	ld	a4,8(a5)
    800032b4:	fce43823          	sd	a4,-48(s0)
    800032b8:	0107c783          	lbu	a5,16(a5)
    800032bc:	fcf40c23          	sb	a5,-40(s0)
        x = -xx;
    } else {
        x = xx;
    }

    i = 0;
    800032c0:	00000493          	li	s1,0
    do {
        buf[i++] = digits[x % base];
    800032c4:	02b57733          	remu	a4,a0,a1
    800032c8:	fe040693          	addi	a3,s0,-32
    800032cc:	00e68733          	add	a4,a3,a4
    800032d0:	fe874703          	lbu	a4,-24(a4)
    800032d4:	009687b3          	add	a5,a3,s1
    800032d8:	0014849b          	addiw	s1,s1,1
    800032dc:	fce78c23          	sb	a4,-40(a5)
    }while((x /= base) != 0);
    800032e0:	00050793          	mv	a5,a0
    800032e4:	02b55533          	divu	a0,a0,a1
    800032e8:	fcb7fee3          	bgeu	a5,a1,800032c4 <_ZN8KConsole12trapPrintIntEmii+0x38>
    if(neg)
        buf[i++] = '-';

    while(--i >= 0)
    800032ec:	fff4849b          	addiw	s1,s1,-1
    800032f0:	0004ce63          	bltz	s1,8000330c <_ZN8KConsole12trapPrintIntEmii+0x80>
        KConsole::putCharacterOutput(buf[i]);
    800032f4:	fe040793          	addi	a5,s0,-32
    800032f8:	009787b3          	add	a5,a5,s1
    800032fc:	fd87c503          	lbu	a0,-40(a5)
    80003300:	00000097          	auipc	ra,0x0
    80003304:	c98080e7          	jalr	-872(ra) # 80002f98 <_ZN8KConsole18putCharacterOutputEc>
    80003308:	fe5ff06f          	j	800032ec <_ZN8KConsole12trapPrintIntEmii+0x60>
}
    8000330c:	04813083          	ld	ra,72(sp)
    80003310:	04013403          	ld	s0,64(sp)
    80003314:	03813483          	ld	s1,56(sp)
    80003318:	05010113          	addi	sp,sp,80
    8000331c:	00008067          	ret

0000000080003320 <_ZN12SleepPCBList17insertSleepingPCBEv>:
#include "../h/Riscv.hpp"

PCB* SleepPCBList::sleepingPCBHead = 0;

void SleepPCBList::insertSleepingPCB()
{
    80003320:	ff010113          	addi	sp,sp,-16
    80003324:	00813423          	sd	s0,8(sp)
    80003328:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SLEEPING);
    8000332c:	00007797          	auipc	a5,0x7
    80003330:	2347b783          	ld	a5,564(a5) # 8000a560 <_GLOBAL_OFFSET_TABLE_+0x68>
    80003334:	0007b603          	ld	a2,0(a5)
    void setState(State s) {state = s;}
    80003338:	00500793          	li	a5,5
    8000333c:	04f62023          	sw	a5,64(a2)
    PCB* prev = 0;
    PCB* curr = sleepingPCBHead;
    80003340:	0000b797          	auipc	a5,0xb
    80003344:	2f07b783          	ld	a5,752(a5) # 8000e630 <_ZN12SleepPCBList15sleepingPCBHeadE>
    PCB* prev = 0;
    80003348:	00000593          	li	a1,0
    while(curr != 0)
    8000334c:	02078063          	beqz	a5,8000336c <_ZN12SleepPCBList17insertSleepingPCBEv+0x4c>
    uint64 getTimeToSleep() {return timeToSleep;}
    80003350:	02063683          	ld	a3,32(a2)
    80003354:	0207b703          	ld	a4,32(a5)
    {
        if(PCB::running->getTimeToSleep() < curr->getTimeToSleep())
    80003358:	00e6e863          	bltu	a3,a4,80003368 <_ZN12SleepPCBList17insertSleepingPCBEv+0x48>
        {
            PCB::running->nextPCB = curr;
            break;
        }
        prev = curr;
    8000335c:	00078593          	mv	a1,a5
        curr=curr->nextPCB;
    80003360:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003364:	fe9ff06f          	j	8000334c <_ZN12SleepPCBList17insertSleepingPCBEv+0x2c>
            PCB::running->nextPCB = curr;
    80003368:	00f63423          	sd	a5,8(a2)
    }

    if(prev == 0)
    8000336c:	00058a63          	beqz	a1,80003380 <_ZN12SleepPCBList17insertSleepingPCBEv+0x60>
        sleepingPCBHead = PCB::running;
    else
        prev->nextPCB = PCB::running;
    80003370:	00c5b423          	sd	a2,8(a1)
}
    80003374:	00813403          	ld	s0,8(sp)
    80003378:	01010113          	addi	sp,sp,16
    8000337c:	00008067          	ret
        sleepingPCBHead = PCB::running;
    80003380:	0000b797          	auipc	a5,0xb
    80003384:	2ac7b823          	sd	a2,688(a5) # 8000e630 <_ZN12SleepPCBList15sleepingPCBHeadE>
    80003388:	fedff06f          	j	80003374 <_ZN12SleepPCBList17insertSleepingPCBEv+0x54>

000000008000338c <_ZN12SleepPCBList13tryToWakePCBsEv>:

void SleepPCBList::tryToWakePCBs()
{
    PCB* curr = sleepingPCBHead;
    8000338c:	0000b517          	auipc	a0,0xb
    80003390:	2a453503          	ld	a0,676(a0) # 8000e630 <_ZN12SleepPCBList15sleepingPCBHeadE>
    if(curr == 0)
    80003394:	06050e63          	beqz	a0,80003410 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
        return;

    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    80003398:	06050c63          	beqz	a0,80003410 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
    8000339c:	02053783          	ld	a5,32(a0)
    800033a0:	00007717          	auipc	a4,0x7
    800033a4:	1a073703          	ld	a4,416(a4) # 8000a540 <_GLOBAL_OFFSET_TABLE_+0x48>
    800033a8:	00073703          	ld	a4,0(a4)
    800033ac:	06f76263          	bltu	a4,a5,80003410 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
{
    800033b0:	fe010113          	addi	sp,sp,-32
    800033b4:	00113c23          	sd	ra,24(sp)
    800033b8:	00813823          	sd	s0,16(sp)
    800033bc:	00913423          	sd	s1,8(sp)
    800033c0:	02010413          	addi	s0,sp,32
    800033c4:	0180006f          	j	800033dc <_ZN12SleepPCBList13tryToWakePCBsEv+0x50>
    800033c8:	0204b783          	ld	a5,32(s1)
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    800033cc:	00007717          	auipc	a4,0x7
    800033d0:	17473703          	ld	a4,372(a4) # 8000a540 <_GLOBAL_OFFSET_TABLE_+0x48>
    800033d4:	00073703          	ld	a4,0(a4)
    800033d8:	02f76263          	bltu	a4,a5,800033fc <_ZN12SleepPCBList13tryToWakePCBsEv+0x70>
    {
        PCB *old = curr;
        curr = curr->nextPCB;
    800033dc:	00853483          	ld	s1,8(a0)
        old->nextPCB = 0;
    800033e0:	00053423          	sd	zero,8(a0)
        Scheduler::put(old);
    800033e4:	00000097          	auipc	ra,0x0
    800033e8:	0b8080e7          	jalr	184(ra) # 8000349c <_ZN9Scheduler3putEP3PCB>
        sleepingPCBHead = curr;
    800033ec:	0000b797          	auipc	a5,0xb
    800033f0:	2497b223          	sd	s1,580(a5) # 8000e630 <_ZN12SleepPCBList15sleepingPCBHeadE>
        curr = curr->nextPCB;
    800033f4:	00048513          	mv	a0,s1
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    800033f8:	fc0498e3          	bnez	s1,800033c8 <_ZN12SleepPCBList13tryToWakePCBsEv+0x3c>
    }
}
    800033fc:	01813083          	ld	ra,24(sp)
    80003400:	01013403          	ld	s0,16(sp)
    80003404:	00813483          	ld	s1,8(sp)
    80003408:	02010113          	addi	sp,sp,32
    8000340c:	00008067          	ret
    80003410:	00008067          	ret

0000000080003414 <_ZN9SchedulernwEm>:

PCB* Scheduler::schedulerPCBHead = 0;
PCB* Scheduler::schedulerPCBTail = 0;

void *Scheduler::operator new(size_t size)
{
    80003414:	ff010113          	addi	sp,sp,-16
    80003418:	00113423          	sd	ra,8(sp)
    8000341c:	00813023          	sd	s0,0(sp)
    80003420:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmalloc(size);
    80003424:	00001097          	auipc	ra,0x1
    80003428:	0f4080e7          	jalr	244(ra) # 80004518 <_ZN15MemoryAllocator7kmallocEm>
}
    8000342c:	00813083          	ld	ra,8(sp)
    80003430:	00013403          	ld	s0,0(sp)
    80003434:	01010113          	addi	sp,sp,16
    80003438:	00008067          	ret

000000008000343c <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *p)
{
    8000343c:	ff010113          	addi	sp,sp,-16
    80003440:	00113423          	sd	ra,8(sp)
    80003444:	00813023          	sd	s0,0(sp)
    80003448:	01010413          	addi	s0,sp,16
    MemoryAllocator::kfree(p);
    8000344c:	00001097          	auipc	ra,0x1
    80003450:	130080e7          	jalr	304(ra) # 8000457c <_ZN15MemoryAllocator5kfreeEPv>
}
    80003454:	00813083          	ld	ra,8(sp)
    80003458:	00013403          	ld	s0,0(sp)
    8000345c:	01010113          	addi	sp,sp,16
    80003460:	00008067          	ret

0000000080003464 <_ZN9Scheduler7getSizeEv>:

int Scheduler::getSize()
{
    80003464:	ff010113          	addi	sp,sp,-16
    80003468:	00813423          	sd	s0,8(sp)
    8000346c:	01010413          	addi	s0,sp,16
    uint64 sz = 0;
    PCB* curr = schedulerPCBHead;
    80003470:	0000b797          	auipc	a5,0xb
    80003474:	1c87b783          	ld	a5,456(a5) # 8000e638 <_ZN9Scheduler16schedulerPCBHeadE>
    uint64 sz = 0;
    80003478:	00000513          	li	a0,0
    while(curr != 0)
    8000347c:	00078863          	beqz	a5,8000348c <_ZN9Scheduler7getSizeEv+0x28>
    {
        sz++;
    80003480:	00150513          	addi	a0,a0,1
        curr = curr->nextPCB;
    80003484:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003488:	ff5ff06f          	j	8000347c <_ZN9Scheduler7getSizeEv+0x18>
    }
    return sz;
}
    8000348c:	0005051b          	sext.w	a0,a0
    80003490:	00813403          	ld	s0,8(sp)
    80003494:	01010113          	addi	sp,sp,16
    80003498:	00008067          	ret

000000008000349c <_ZN9Scheduler3putEP3PCB>:

void Scheduler::put(PCB *pcb)
{
    8000349c:	ff010113          	addi	sp,sp,-16
    800034a0:	00813423          	sd	s0,8(sp)
    800034a4:	01010413          	addi	s0,sp,16
    void setState(State s) {state = s;}
    800034a8:	04052023          	sw	zero,64(a0)
    pcb->setState(PCB::READY);
    pcb->nextPCB = 0;
    800034ac:	00053423          	sd	zero,8(a0)
    if(schedulerPCBHead == 0)
    800034b0:	0000b797          	auipc	a5,0xb
    800034b4:	1887b783          	ld	a5,392(a5) # 8000e638 <_ZN9Scheduler16schedulerPCBHeadE>
    800034b8:	02078263          	beqz	a5,800034dc <_ZN9Scheduler3putEP3PCB+0x40>
        schedulerPCBHead = schedulerPCBTail = pcb;
    else
    {
        schedulerPCBTail->nextPCB = pcb;
    800034bc:	0000b797          	auipc	a5,0xb
    800034c0:	17c78793          	addi	a5,a5,380 # 8000e638 <_ZN9Scheduler16schedulerPCBHeadE>
    800034c4:	0087b703          	ld	a4,8(a5)
    800034c8:	00a73423          	sd	a0,8(a4)
        schedulerPCBTail = pcb;
    800034cc:	00a7b423          	sd	a0,8(a5)
    }
}
    800034d0:	00813403          	ld	s0,8(sp)
    800034d4:	01010113          	addi	sp,sp,16
    800034d8:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = pcb;
    800034dc:	0000b797          	auipc	a5,0xb
    800034e0:	15c78793          	addi	a5,a5,348 # 8000e638 <_ZN9Scheduler16schedulerPCBHeadE>
    800034e4:	00a7b423          	sd	a0,8(a5)
    800034e8:	00a7b023          	sd	a0,0(a5)
    800034ec:	fe5ff06f          	j	800034d0 <_ZN9Scheduler3putEP3PCB+0x34>

00000000800034f0 <_ZN9Scheduler3getEv>:

PCB *Scheduler::get()
{
    800034f0:	ff010113          	addi	sp,sp,-16
    800034f4:	00813423          	sd	s0,8(sp)
    800034f8:	01010413          	addi	s0,sp,16
    if(schedulerPCBHead == 0)
    800034fc:	0000b517          	auipc	a0,0xb
    80003500:	13c53503          	ld	a0,316(a0) # 8000e638 <_ZN9Scheduler16schedulerPCBHeadE>
    80003504:	00050c63          	beqz	a0,8000351c <_ZN9Scheduler3getEv+0x2c>
        return 0;
    PCB* retval = schedulerPCBHead;
    if(schedulerPCBHead->nextPCB == 0)
    80003508:	00853783          	ld	a5,8(a0)
    8000350c:	00078e63          	beqz	a5,80003528 <_ZN9Scheduler3getEv+0x38>
        schedulerPCBHead = schedulerPCBTail = 0;
    else
        schedulerPCBHead = schedulerPCBHead->nextPCB;
    80003510:	0000b717          	auipc	a4,0xb
    80003514:	12f73423          	sd	a5,296(a4) # 8000e638 <_ZN9Scheduler16schedulerPCBHeadE>
    retval->nextPCB = 0;
    80003518:	00053423          	sd	zero,8(a0)
    return retval;
}
    8000351c:	00813403          	ld	s0,8(sp)
    80003520:	01010113          	addi	sp,sp,16
    80003524:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = 0;
    80003528:	0000b797          	auipc	a5,0xb
    8000352c:	11078793          	addi	a5,a5,272 # 8000e638 <_ZN9Scheduler16schedulerPCBHeadE>
    80003530:	0007b423          	sd	zero,8(a5)
    80003534:	0007b023          	sd	zero,0(a5)
    80003538:	fe1ff06f          	j	80003518 <_ZN9Scheduler3getEv+0x28>

000000008000353c <_ZN9Scheduler5printEv>:

void Scheduler::print()
{
    8000353c:	fe010113          	addi	sp,sp,-32
    80003540:	00113c23          	sd	ra,24(sp)
    80003544:	00813823          	sd	s0,16(sp)
    80003548:	00913423          	sd	s1,8(sp)
    8000354c:	02010413          	addi	s0,sp,32
    //trapPrintString("Scheduler print\n");
    PCB* curr = schedulerPCBHead;
    80003550:	0000b497          	auipc	s1,0xb
    80003554:	0e84b483          	ld	s1,232(s1) # 8000e638 <_ZN9Scheduler16schedulerPCBHeadE>
    while(curr != 0)
    80003558:	02048863          	beqz	s1,80003588 <_ZN9Scheduler5printEv+0x4c>
    {
        KConsole::trapPrintInt((uint64)curr, 16);
    8000355c:	00000613          	li	a2,0
    80003560:	01000593          	li	a1,16
    80003564:	00048513          	mv	a0,s1
    80003568:	00000097          	auipc	ra,0x0
    8000356c:	d24080e7          	jalr	-732(ra) # 8000328c <_ZN8KConsole12trapPrintIntEmii>
        KConsole::trapPrintString("\n");
    80003570:	00005517          	auipc	a0,0x5
    80003574:	09050513          	addi	a0,a0,144 # 80008600 <CONSOLE_STATUS+0x5f0>
    80003578:	00000097          	auipc	ra,0x0
    8000357c:	cd0080e7          	jalr	-816(ra) # 80003248 <_ZN8KConsole15trapPrintStringEPKc>
        curr = curr->nextPCB;
    80003580:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80003584:	fd5ff06f          	j	80003558 <_ZN9Scheduler5printEv+0x1c>
    }
}
    80003588:	01813083          	ld	ra,24(sp)
    8000358c:	01013403          	ld	s0,16(sp)
    80003590:	00813483          	ld	s1,8(sp)
    80003594:	02010113          	addi	sp,sp,32
    80003598:	00008067          	ret

000000008000359c <main>:
#include "../h/Riscv.hpp"

void main()
{
    8000359c:	ff010113          	addi	sp,sp,-16
    800035a0:	00113423          	sd	ra,8(sp)
    800035a4:	00813023          	sd	s0,0(sp)
    800035a8:	01010413          	addi	s0,sp,16
    Riscv::kernelMain();
    800035ac:	00000097          	auipc	ra,0x0
    800035b0:	760080e7          	jalr	1888(ra) # 80003d0c <_ZN5Riscv10kernelMainEv>
    800035b4:	00813083          	ld	ra,8(sp)
    800035b8:	00013403          	ld	s0,0(sp)
    800035bc:	01010113          	addi	sp,sp,16
    800035c0:	00008067          	ret

00000000800035c4 <_Z14buddyInitTest1v>:
#include "../h/buddyTests.hpp"

void buddyInitTest1()
{
    800035c4:	ff010113          	addi	sp,sp,-16
    800035c8:	00113423          	sd	ra,8(sp)
    800035cc:	00813023          	sd	s0,0(sp)
    800035d0:	01010413          	addi	s0,sp,16
    buddyAllocator* buddy = buddy_init((void*)HEAP_START_ADDR, 18);
    800035d4:	01200593          	li	a1,18
    800035d8:	00007797          	auipc	a5,0x7
    800035dc:	f387b783          	ld	a5,-200(a5) # 8000a510 <_GLOBAL_OFFSET_TABLE_+0x18>
    800035e0:	0007b503          	ld	a0,0(a5)
    800035e4:	fffff097          	auipc	ra,0xfffff
    800035e8:	3f4080e7          	jalr	1012(ra) # 800029d8 <_Z10buddy_initPvm>
    printBuddyInfo(buddy);
    800035ec:	fffff097          	auipc	ra,0xfffff
    800035f0:	624080e7          	jalr	1572(ra) # 80002c10 <_Z14printBuddyInfoP14buddyAllocator>
}
    800035f4:	00813083          	ld	ra,8(sp)
    800035f8:	00013403          	ld	s0,0(sp)
    800035fc:	01010113          	addi	sp,sp,16
    80003600:	00008067          	ret

0000000080003604 <_Z20buddyOnlyAllocsTest1v>:

void buddyOnlyAllocsTest1()
{
    80003604:	fe010113          	addi	sp,sp,-32
    80003608:	00113c23          	sd	ra,24(sp)
    8000360c:	00813823          	sd	s0,16(sp)
    80003610:	00913423          	sd	s1,8(sp)
    80003614:	02010413          	addi	s0,sp,32
    buddyAllocator* buddy = buddy_init((void*)HEAP_START_ADDR, 10);
    80003618:	00a00593          	li	a1,10
    8000361c:	00007797          	auipc	a5,0x7
    80003620:	ef47b783          	ld	a5,-268(a5) # 8000a510 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003624:	0007b503          	ld	a0,0(a5)
    80003628:	fffff097          	auipc	ra,0xfffff
    8000362c:	3b0080e7          	jalr	944(ra) # 800029d8 <_Z10buddy_initPvm>
    80003630:	00050493          	mv	s1,a0
    printBuddyInfo(buddy);
    80003634:	fffff097          	auipc	ra,0xfffff
    80003638:	5dc080e7          	jalr	1500(ra) # 80002c10 <_Z14printBuddyInfoP14buddyAllocator>
    buddy_alloc(buddy,3);
    8000363c:	00300593          	li	a1,3
    80003640:	00048513          	mv	a0,s1
    80003644:	fffff097          	auipc	ra,0xfffff
    80003648:	068080e7          	jalr	104(ra) # 800026ac <_Z11buddy_allocP14buddyAllocatorm>
    printBuddyInfo(buddy);
    8000364c:	00048513          	mv	a0,s1
    80003650:	fffff097          	auipc	ra,0xfffff
    80003654:	5c0080e7          	jalr	1472(ra) # 80002c10 <_Z14printBuddyInfoP14buddyAllocator>
    buddy_alloc(buddy,1);
    80003658:	00100593          	li	a1,1
    8000365c:	00048513          	mv	a0,s1
    80003660:	fffff097          	auipc	ra,0xfffff
    80003664:	04c080e7          	jalr	76(ra) # 800026ac <_Z11buddy_allocP14buddyAllocatorm>
    printBuddyInfo(buddy);
    80003668:	00048513          	mv	a0,s1
    8000366c:	fffff097          	auipc	ra,0xfffff
    80003670:	5a4080e7          	jalr	1444(ra) # 80002c10 <_Z14printBuddyInfoP14buddyAllocator>
    buddy_alloc(buddy,1);
    80003674:	00100593          	li	a1,1
    80003678:	00048513          	mv	a0,s1
    8000367c:	fffff097          	auipc	ra,0xfffff
    80003680:	030080e7          	jalr	48(ra) # 800026ac <_Z11buddy_allocP14buddyAllocatorm>
    printBuddyInfo(buddy);
    80003684:	00048513          	mv	a0,s1
    80003688:	fffff097          	auipc	ra,0xfffff
    8000368c:	588080e7          	jalr	1416(ra) # 80002c10 <_Z14printBuddyInfoP14buddyAllocator>
    buddy_alloc(buddy,1);
    80003690:	00100593          	li	a1,1
    80003694:	00048513          	mv	a0,s1
    80003698:	fffff097          	auipc	ra,0xfffff
    8000369c:	014080e7          	jalr	20(ra) # 800026ac <_Z11buddy_allocP14buddyAllocatorm>
    printBuddyInfo(buddy);
    800036a0:	00048513          	mv	a0,s1
    800036a4:	fffff097          	auipc	ra,0xfffff
    800036a8:	56c080e7          	jalr	1388(ra) # 80002c10 <_Z14printBuddyInfoP14buddyAllocator>
    800036ac:	01813083          	ld	ra,24(sp)
    800036b0:	01013403          	ld	s0,16(sp)
    800036b4:	00813483          	ld	s1,8(sp)
    800036b8:	02010113          	addi	sp,sp,32
    800036bc:	00008067          	ret

00000000800036c0 <_ZN6Thread6runnerEPv>:
    myHandle = 0;
    thread_make_pcb(&myHandle, &Thread::runner, (void*)this);
}

void Thread::runner(void *t)
{
    800036c0:	ff010113          	addi	sp,sp,-16
    800036c4:	00113423          	sd	ra,8(sp)
    800036c8:	00813023          	sd	s0,0(sp)
    800036cc:	01010413          	addi	s0,sp,16
    Thread* thr = (Thread*)t;
    thr->run();
    800036d0:	00053783          	ld	a5,0(a0)
    800036d4:	0107b783          	ld	a5,16(a5)
    800036d8:	000780e7          	jalr	a5
}
    800036dc:	00813083          	ld	ra,8(sp)
    800036e0:	00013403          	ld	s0,0(sp)
    800036e4:	01010113          	addi	sp,sp,16
    800036e8:	00008067          	ret

00000000800036ec <_ZN6ThreadD1Ev>:

Thread::~Thread()
    800036ec:	00007797          	auipc	a5,0x7
    800036f0:	dbc78793          	addi	a5,a5,-580 # 8000a4a8 <_ZTV6Thread+0x10>
    800036f4:	00f53023          	sd	a5,0(a0)
{
    delete myHandle;
    800036f8:	00853503          	ld	a0,8(a0)
    800036fc:	02050663          	beqz	a0,80003728 <_ZN6ThreadD1Ev+0x3c>
Thread::~Thread()
    80003700:	ff010113          	addi	sp,sp,-16
    80003704:	00113423          	sd	ra,8(sp)
    80003708:	00813023          	sd	s0,0(sp)
    8000370c:	01010413          	addi	s0,sp,16
    delete myHandle;
    80003710:	fffff097          	auipc	ra,0xfffff
    80003714:	870080e7          	jalr	-1936(ra) # 80001f80 <_ZN7_threaddlEPv>
}
    80003718:	00813083          	ld	ra,8(sp)
    8000371c:	00013403          	ld	s0,0(sp)
    80003720:	01010113          	addi	sp,sp,16
    80003724:	00008067          	ret
    80003728:	00008067          	ret

000000008000372c <_ZN9SemaphoreD1Ev>:
    if(myHandle == 0)
        return -1;
    return sem_signal(myHandle);
}

Semaphore::~Semaphore() {
    8000372c:	00007797          	auipc	a5,0x7
    80003730:	da478793          	addi	a5,a5,-604 # 8000a4d0 <_ZTV9Semaphore+0x10>
    80003734:	00f53023          	sd	a5,0(a0)
    delete myHandle;
    80003738:	00853503          	ld	a0,8(a0)
    8000373c:	02050663          	beqz	a0,80003768 <_ZN9SemaphoreD1Ev+0x3c>
Semaphore::~Semaphore() {
    80003740:	ff010113          	addi	sp,sp,-16
    80003744:	00113423          	sd	ra,8(sp)
    80003748:	00813023          	sd	s0,0(sp)
    8000374c:	01010413          	addi	s0,sp,16
    delete myHandle;
    80003750:	00000097          	auipc	ra,0x0
    80003754:	464080e7          	jalr	1124(ra) # 80003bb4 <_ZN4_semdlEPv>
}
    80003758:	00813083          	ld	ra,8(sp)
    8000375c:	00013403          	ld	s0,0(sp)
    80003760:	01010113          	addi	sp,sp,16
    80003764:	00008067          	ret
    80003768:	00008067          	ret

000000008000376c <_Znwm>:
{
    8000376c:	ff010113          	addi	sp,sp,-16
    80003770:	00113423          	sd	ra,8(sp)
    80003774:	00813023          	sd	s0,0(sp)
    80003778:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    8000377c:	ffffe097          	auipc	ra,0xffffe
    80003780:	4ac080e7          	jalr	1196(ra) # 80001c28 <_Z9mem_allocm>
}
    80003784:	00813083          	ld	ra,8(sp)
    80003788:	00013403          	ld	s0,0(sp)
    8000378c:	01010113          	addi	sp,sp,16
    80003790:	00008067          	ret

0000000080003794 <_ZdlPv>:
{
    80003794:	ff010113          	addi	sp,sp,-16
    80003798:	00113423          	sd	ra,8(sp)
    8000379c:	00813023          	sd	s0,0(sp)
    800037a0:	01010413          	addi	s0,sp,16
    mem_free(p);
    800037a4:	ffffe097          	auipc	ra,0xffffe
    800037a8:	4b4080e7          	jalr	1204(ra) # 80001c58 <_Z8mem_freePv>
}
    800037ac:	00813083          	ld	ra,8(sp)
    800037b0:	00013403          	ld	s0,0(sp)
    800037b4:	01010113          	addi	sp,sp,16
    800037b8:	00008067          	ret

00000000800037bc <_ZN6ThreadD0Ev>:
Thread::~Thread()
    800037bc:	fe010113          	addi	sp,sp,-32
    800037c0:	00113c23          	sd	ra,24(sp)
    800037c4:	00813823          	sd	s0,16(sp)
    800037c8:	00913423          	sd	s1,8(sp)
    800037cc:	02010413          	addi	s0,sp,32
    800037d0:	00050493          	mv	s1,a0
}
    800037d4:	00000097          	auipc	ra,0x0
    800037d8:	f18080e7          	jalr	-232(ra) # 800036ec <_ZN6ThreadD1Ev>
    800037dc:	00048513          	mv	a0,s1
    800037e0:	00000097          	auipc	ra,0x0
    800037e4:	fb4080e7          	jalr	-76(ra) # 80003794 <_ZdlPv>
    800037e8:	01813083          	ld	ra,24(sp)
    800037ec:	01013403          	ld	s0,16(sp)
    800037f0:	00813483          	ld	s1,8(sp)
    800037f4:	02010113          	addi	sp,sp,32
    800037f8:	00008067          	ret

00000000800037fc <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    800037fc:	fe010113          	addi	sp,sp,-32
    80003800:	00113c23          	sd	ra,24(sp)
    80003804:	00813823          	sd	s0,16(sp)
    80003808:	00913423          	sd	s1,8(sp)
    8000380c:	02010413          	addi	s0,sp,32
    80003810:	00050493          	mv	s1,a0
}
    80003814:	00000097          	auipc	ra,0x0
    80003818:	f18080e7          	jalr	-232(ra) # 8000372c <_ZN9SemaphoreD1Ev>
    8000381c:	00048513          	mv	a0,s1
    80003820:	00000097          	auipc	ra,0x0
    80003824:	f74080e7          	jalr	-140(ra) # 80003794 <_ZdlPv>
    80003828:	01813083          	ld	ra,24(sp)
    8000382c:	01013403          	ld	s0,16(sp)
    80003830:	00813483          	ld	s1,8(sp)
    80003834:	02010113          	addi	sp,sp,32
    80003838:	00008067          	ret

000000008000383c <_ZN6Thread5startEv>:
    if(myHandle != 0)
    8000383c:	00853503          	ld	a0,8(a0)
    80003840:	02050663          	beqz	a0,8000386c <_ZN6Thread5startEv+0x30>
{
    80003844:	ff010113          	addi	sp,sp,-16
    80003848:	00113423          	sd	ra,8(sp)
    8000384c:	00813023          	sd	s0,0(sp)
    80003850:	01010413          	addi	s0,sp,16
        return thread_start(myHandle);
    80003854:	ffffe097          	auipc	ra,0xffffe
    80003858:	5e0080e7          	jalr	1504(ra) # 80001e34 <_Z12thread_startPv>
}
    8000385c:	00813083          	ld	ra,8(sp)
    80003860:	00013403          	ld	s0,0(sp)
    80003864:	01010113          	addi	sp,sp,16
    80003868:	00008067          	ret
        return -1;
    8000386c:	fff00513          	li	a0,-1
}
    80003870:	00008067          	ret

0000000080003874 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80003874:	ff010113          	addi	sp,sp,-16
    80003878:	00113423          	sd	ra,8(sp)
    8000387c:	00813023          	sd	s0,0(sp)
    80003880:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80003884:	ffffe097          	auipc	ra,0xffffe
    80003888:	480080e7          	jalr	1152(ra) # 80001d04 <_Z15thread_dispatchv>
}
    8000388c:	00813083          	ld	ra,8(sp)
    80003890:	00013403          	ld	s0,0(sp)
    80003894:	01010113          	addi	sp,sp,16
    80003898:	00008067          	ret

000000008000389c <_ZN6Thread5sleepEm>:
{
    8000389c:	ff010113          	addi	sp,sp,-16
    800038a0:	00113423          	sd	ra,8(sp)
    800038a4:	00813023          	sd	s0,0(sp)
    800038a8:	01010413          	addi	s0,sp,16
    time_sleep(time);
    800038ac:	ffffe097          	auipc	ra,0xffffe
    800038b0:	55c080e7          	jalr	1372(ra) # 80001e08 <_Z10time_sleepm>
}
    800038b4:	00813083          	ld	ra,8(sp)
    800038b8:	00013403          	ld	s0,0(sp)
    800038bc:	01010113          	addi	sp,sp,16
    800038c0:	00008067          	ret

00000000800038c4 <_ZN14PeriodicThread6runnerEPv>:
{

}

void PeriodicThread::runner(void* arg)
{
    800038c4:	fe010113          	addi	sp,sp,-32
    800038c8:	00113c23          	sd	ra,24(sp)
    800038cc:	00813823          	sd	s0,16(sp)
    800038d0:	00913423          	sd	s1,8(sp)
    800038d4:	01213023          	sd	s2,0(sp)
    800038d8:	02010413          	addi	s0,sp,32
    PeriodicThread *pThread =(PeriodicThread*) ((ArgsPeriodic*)arg)->pt;
    800038dc:	00053483          	ld	s1,0(a0)
    uint64 time = ((ArgsPeriodic*)arg)->time;
    800038e0:	00853903          	ld	s2,8(a0)

    while(true)
    {
        pThread->periodicActivation();
    800038e4:	0004b783          	ld	a5,0(s1)
    800038e8:	0187b783          	ld	a5,24(a5)
    800038ec:	00048513          	mv	a0,s1
    800038f0:	000780e7          	jalr	a5
        Thread::sleep(time);
    800038f4:	00090513          	mv	a0,s2
    800038f8:	00000097          	auipc	ra,0x0
    800038fc:	fa4080e7          	jalr	-92(ra) # 8000389c <_ZN6Thread5sleepEm>
    while(true)
    80003900:	fe5ff06f          	j	800038e4 <_ZN14PeriodicThread6runnerEPv+0x20>

0000000080003904 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *args)
    80003904:	ff010113          	addi	sp,sp,-16
    80003908:	00113423          	sd	ra,8(sp)
    8000390c:	00813023          	sd	s0,0(sp)
    80003910:	01010413          	addi	s0,sp,16
    80003914:	00007797          	auipc	a5,0x7
    80003918:	b9478793          	addi	a5,a5,-1132 # 8000a4a8 <_ZTV6Thread+0x10>
    8000391c:	00f53023          	sd	a5,0(a0)
    myHandle = 0;
    80003920:	00053423          	sd	zero,8(a0)
    thread_make_pcb(&myHandle, body, args);
    80003924:	00850513          	addi	a0,a0,8
    80003928:	ffffe097          	auipc	ra,0xffffe
    8000392c:	538080e7          	jalr	1336(ra) # 80001e60 <_Z15thread_make_pcbPP7_threadPFvPvES2_>
}
    80003930:	00813083          	ld	ra,8(sp)
    80003934:	00013403          	ld	s0,0(sp)
    80003938:	01010113          	addi	sp,sp,16
    8000393c:	00008067          	ret

0000000080003940 <_ZN6ThreadC1Ev>:
Thread::Thread()
    80003940:	ff010113          	addi	sp,sp,-16
    80003944:	00113423          	sd	ra,8(sp)
    80003948:	00813023          	sd	s0,0(sp)
    8000394c:	01010413          	addi	s0,sp,16
    80003950:	00007797          	auipc	a5,0x7
    80003954:	b5878793          	addi	a5,a5,-1192 # 8000a4a8 <_ZTV6Thread+0x10>
    80003958:	00f53023          	sd	a5,0(a0)
    myHandle = 0;
    8000395c:	00053423          	sd	zero,8(a0)
    thread_make_pcb(&myHandle, &Thread::runner, (void*)this);
    80003960:	00050613          	mv	a2,a0
    80003964:	00000597          	auipc	a1,0x0
    80003968:	d5c58593          	addi	a1,a1,-676 # 800036c0 <_ZN6Thread6runnerEPv>
    8000396c:	00850513          	addi	a0,a0,8
    80003970:	ffffe097          	auipc	ra,0xffffe
    80003974:	4f0080e7          	jalr	1264(ra) # 80001e60 <_Z15thread_make_pcbPP7_threadPFvPvES2_>
}
    80003978:	00813083          	ld	ra,8(sp)
    8000397c:	00013403          	ld	s0,0(sp)
    80003980:	01010113          	addi	sp,sp,16
    80003984:	00008067          	ret

0000000080003988 <_ZN9Semaphore4waitEv>:
    if(myHandle == 0)
    80003988:	00853503          	ld	a0,8(a0)
    8000398c:	02050663          	beqz	a0,800039b8 <_ZN9Semaphore4waitEv+0x30>
{
    80003990:	ff010113          	addi	sp,sp,-16
    80003994:	00113423          	sd	ra,8(sp)
    80003998:	00813023          	sd	s0,0(sp)
    8000399c:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    800039a0:	ffffe097          	auipc	ra,0xffffe
    800039a4:	410080e7          	jalr	1040(ra) # 80001db0 <_Z8sem_waitP4_sem>
}
    800039a8:	00813083          	ld	ra,8(sp)
    800039ac:	00013403          	ld	s0,0(sp)
    800039b0:	01010113          	addi	sp,sp,16
    800039b4:	00008067          	ret
        return -1;
    800039b8:	fff00513          	li	a0,-1
}
    800039bc:	00008067          	ret

00000000800039c0 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init)
    800039c0:	fe010113          	addi	sp,sp,-32
    800039c4:	00113c23          	sd	ra,24(sp)
    800039c8:	00813823          	sd	s0,16(sp)
    800039cc:	00913423          	sd	s1,8(sp)
    800039d0:	02010413          	addi	s0,sp,32
    800039d4:	00050493          	mv	s1,a0
    800039d8:	00007797          	auipc	a5,0x7
    800039dc:	af878793          	addi	a5,a5,-1288 # 8000a4d0 <_ZTV9Semaphore+0x10>
    800039e0:	00f53023          	sd	a5,0(a0)
    int retval = sem_open(&myHandle, init);
    800039e4:	00850513          	addi	a0,a0,8
    800039e8:	ffffe097          	auipc	ra,0xffffe
    800039ec:	364080e7          	jalr	868(ra) # 80001d4c <_Z8sem_openPP4_semj>
    if(retval != 0)
    800039f0:	00050463          	beqz	a0,800039f8 <_ZN9SemaphoreC1Ej+0x38>
        myHandle = 0;
    800039f4:	0004b423          	sd	zero,8(s1)
}
    800039f8:	01813083          	ld	ra,24(sp)
    800039fc:	01013403          	ld	s0,16(sp)
    80003a00:	00813483          	ld	s1,8(sp)
    80003a04:	02010113          	addi	sp,sp,32
    80003a08:	00008067          	ret

0000000080003a0c <_ZN9Semaphore6signalEv>:
    if(myHandle == 0)
    80003a0c:	00853503          	ld	a0,8(a0)
    80003a10:	02050663          	beqz	a0,80003a3c <_ZN9Semaphore6signalEv+0x30>
{
    80003a14:	ff010113          	addi	sp,sp,-16
    80003a18:	00113423          	sd	ra,8(sp)
    80003a1c:	00813023          	sd	s0,0(sp)
    80003a20:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80003a24:	ffffe097          	auipc	ra,0xffffe
    80003a28:	3b8080e7          	jalr	952(ra) # 80001ddc <_Z10sem_signalP4_sem>
}
    80003a2c:	00813083          	ld	ra,8(sp)
    80003a30:	00013403          	ld	s0,0(sp)
    80003a34:	01010113          	addi	sp,sp,16
    80003a38:	00008067          	ret
        return -1;
    80003a3c:	fff00513          	li	a0,-1
}
    80003a40:	00008067          	ret

0000000080003a44 <_ZN7Console4getcEv>:
{
    80003a44:	ff010113          	addi	sp,sp,-16
    80003a48:	00113423          	sd	ra,8(sp)
    80003a4c:	00813023          	sd	s0,0(sp)
    80003a50:	01010413          	addi	s0,sp,16
    return ::getc();
    80003a54:	ffffe097          	auipc	ra,0xffffe
    80003a58:	48c080e7          	jalr	1164(ra) # 80001ee0 <_Z4getcv>
}
    80003a5c:	00813083          	ld	ra,8(sp)
    80003a60:	00013403          	ld	s0,0(sp)
    80003a64:	01010113          	addi	sp,sp,16
    80003a68:	00008067          	ret

0000000080003a6c <_ZN7Console4putcEc>:
{
    80003a6c:	ff010113          	addi	sp,sp,-16
    80003a70:	00113423          	sd	ra,8(sp)
    80003a74:	00813023          	sd	s0,0(sp)
    80003a78:	01010413          	addi	s0,sp,16
    return ::putc(c);
    80003a7c:	ffffe097          	auipc	ra,0xffffe
    80003a80:	48c080e7          	jalr	1164(ra) # 80001f08 <_Z4putcc>
}
    80003a84:	00813083          	ld	ra,8(sp)
    80003a88:	00013403          	ld	s0,0(sp)
    80003a8c:	01010113          	addi	sp,sp,16
    80003a90:	00008067          	ret

0000000080003a94 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    80003a94:	fe010113          	addi	sp,sp,-32
    80003a98:	00113c23          	sd	ra,24(sp)
    80003a9c:	00813823          	sd	s0,16(sp)
    80003aa0:	00913423          	sd	s1,8(sp)
    80003aa4:	01213023          	sd	s2,0(sp)
    80003aa8:	02010413          	addi	s0,sp,32
    80003aac:	00050493          	mv	s1,a0
    80003ab0:	00058913          	mv	s2,a1
    80003ab4:	01000513          	li	a0,16
    80003ab8:	00000097          	auipc	ra,0x0
    80003abc:	cb4080e7          	jalr	-844(ra) # 8000376c <_Znwm>
    80003ac0:	00050613          	mv	a2,a0
    ArgsPeriodic(void *p, uint64 t) : pt(p), time(t){}
    80003ac4:	00953023          	sd	s1,0(a0)
    80003ac8:	01253423          	sd	s2,8(a0)
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    80003acc:	00000597          	auipc	a1,0x0
    80003ad0:	df858593          	addi	a1,a1,-520 # 800038c4 <_ZN14PeriodicThread6runnerEPv>
    80003ad4:	00048513          	mv	a0,s1
    80003ad8:	00000097          	auipc	ra,0x0
    80003adc:	e2c080e7          	jalr	-468(ra) # 80003904 <_ZN6ThreadC1EPFvPvES0_>
    80003ae0:	00007797          	auipc	a5,0x7
    80003ae4:	99878793          	addi	a5,a5,-1640 # 8000a478 <_ZTV14PeriodicThread+0x10>
    80003ae8:	00f4b023          	sd	a5,0(s1)
}
    80003aec:	01813083          	ld	ra,24(sp)
    80003af0:	01013403          	ld	s0,16(sp)
    80003af4:	00813483          	ld	s1,8(sp)
    80003af8:	00013903          	ld	s2,0(sp)
    80003afc:	02010113          	addi	sp,sp,32
    80003b00:	00008067          	ret

0000000080003b04 <_ZN6Thread3runEv>:
    static void sleep(time_t);

protected:
    Thread();

    virtual void run() {}
    80003b04:	ff010113          	addi	sp,sp,-16
    80003b08:	00813423          	sd	s0,8(sp)
    80003b0c:	01010413          	addi	s0,sp,16
    80003b10:	00813403          	ld	s0,8(sp)
    80003b14:	01010113          	addi	sp,sp,16
    80003b18:	00008067          	ret

0000000080003b1c <_ZN14PeriodicThread18periodicActivationEv>:

class PeriodicThread : public Thread
{
protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation() {};
    80003b1c:	ff010113          	addi	sp,sp,-16
    80003b20:	00813423          	sd	s0,8(sp)
    80003b24:	01010413          	addi	s0,sp,16
    80003b28:	00813403          	ld	s0,8(sp)
    80003b2c:	01010113          	addi	sp,sp,16
    80003b30:	00008067          	ret

0000000080003b34 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread
    80003b34:	ff010113          	addi	sp,sp,-16
    80003b38:	00113423          	sd	ra,8(sp)
    80003b3c:	00813023          	sd	s0,0(sp)
    80003b40:	01010413          	addi	s0,sp,16
    80003b44:	00007797          	auipc	a5,0x7
    80003b48:	93478793          	addi	a5,a5,-1740 # 8000a478 <_ZTV14PeriodicThread+0x10>
    80003b4c:	00f53023          	sd	a5,0(a0)
    80003b50:	00000097          	auipc	ra,0x0
    80003b54:	b9c080e7          	jalr	-1124(ra) # 800036ec <_ZN6ThreadD1Ev>
    80003b58:	00813083          	ld	ra,8(sp)
    80003b5c:	00013403          	ld	s0,0(sp)
    80003b60:	01010113          	addi	sp,sp,16
    80003b64:	00008067          	ret

0000000080003b68 <_ZN14PeriodicThreadD0Ev>:
    80003b68:	fe010113          	addi	sp,sp,-32
    80003b6c:	00113c23          	sd	ra,24(sp)
    80003b70:	00813823          	sd	s0,16(sp)
    80003b74:	00913423          	sd	s1,8(sp)
    80003b78:	02010413          	addi	s0,sp,32
    80003b7c:	00050493          	mv	s1,a0
    80003b80:	00007797          	auipc	a5,0x7
    80003b84:	8f878793          	addi	a5,a5,-1800 # 8000a478 <_ZTV14PeriodicThread+0x10>
    80003b88:	00f53023          	sd	a5,0(a0)
    80003b8c:	00000097          	auipc	ra,0x0
    80003b90:	b60080e7          	jalr	-1184(ra) # 800036ec <_ZN6ThreadD1Ev>
    80003b94:	00048513          	mv	a0,s1
    80003b98:	00000097          	auipc	ra,0x0
    80003b9c:	bfc080e7          	jalr	-1028(ra) # 80003794 <_ZdlPv>
    80003ba0:	01813083          	ld	ra,24(sp)
    80003ba4:	01013403          	ld	s0,16(sp)
    80003ba8:	00813483          	ld	s1,8(sp)
    80003bac:	02010113          	addi	sp,sp,32
    80003bb0:	00008067          	ret

0000000080003bb4 <_ZN4_semdlEPv>:
//

#include "../h/_sem.hpp"
#include "../h/syscall_c.hpp"

void _sem::operator delete(void *p) {
    80003bb4:	ff010113          	addi	sp,sp,-16
    80003bb8:	00113423          	sd	ra,8(sp)
    80003bbc:	00813023          	sd	s0,0(sp)
    80003bc0:	01010413          	addi	s0,sp,16
    sem_close((sem_t)p);
    80003bc4:	ffffe097          	auipc	ra,0xffffe
    80003bc8:	1c0080e7          	jalr	448(ra) # 80001d84 <_Z9sem_closeP4_sem>
}
    80003bcc:	00813083          	ld	ra,8(sp)
    80003bd0:	00013403          	ld	s0,0(sp)
    80003bd4:	01010113          	addi	sp,sp,16
    80003bd8:	00008067          	ret

0000000080003bdc <_ZN5Riscv10initSystemEv>:
uint64 Riscv::totalTime = 0;
bool Riscv::finishSystem = false;
bool Riscv::kernelMainCalled = false;

void Riscv::initSystem()
{
    80003bdc:	ff010113          	addi	sp,sp,-16
    80003be0:	00113423          	sd	ra,8(sp)
    80003be4:	00813023          	sd	s0,0(sp)
    80003be8:	01010413          	addi	s0,sp,16
    w_stvec((uint64)&Riscv::supervisorTrap);
    80003bec:	00007797          	auipc	a5,0x7
    80003bf0:	92c7b783          	ld	a5,-1748(a5) # 8000a518 <_GLOBAL_OFFSET_TABLE_+0x20>
    __asm__ volatile("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec) {
    __asm__ volatile("csrw stvec, %0" : :"r"(stvec));
    80003bf4:	10579073          	csrw	stvec,a5
    PCB::initialize();
    80003bf8:	ffffe097          	auipc	ra,0xffffe
    80003bfc:	574080e7          	jalr	1396(ra) # 8000216c <_ZN3PCB10initializeEv>
    KConsole::initialize();
    80003c00:	fffff097          	auipc	ra,0xfffff
    80003c04:	19c080e7          	jalr	412(ra) # 80002d9c <_ZN8KConsole10initializeEv>
}
    80003c08:	00813083          	ld	ra,8(sp)
    80003c0c:	00013403          	ld	s0,0(sp)
    80003c10:	01010113          	addi	sp,sp,16
    80003c14:	00008067          	ret

0000000080003c18 <_ZN5Riscv16enableInterruptsEv>:
        thread_dispatch();
    }
    disableInterrupts();
}

void Riscv::enableInterrupts() {
    80003c18:	ff010113          	addi	sp,sp,-16
    80003c1c:	00813423          	sd	s0,8(sp)
    80003c20:	01010413          	addi	s0,sp,16
inline void Riscv::w_sip(uint64 sip) {
    __asm__ volatile("csrw sip, %0" : :"r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80003c24:	00200793          	li	a5,2
    80003c28:	1007a073          	csrs	sstatus,a5
    ms_sstatus(Riscv::SSTATUS_SIE);
}
    80003c2c:	00813403          	ld	s0,8(sp)
    80003c30:	01010113          	addi	sp,sp,16
    80003c34:	00008067          	ret

0000000080003c38 <_ZN5Riscv17disableInterruptsEv>:

void Riscv::disableInterrupts()
{
    80003c38:	ff010113          	addi	sp,sp,-16
    80003c3c:	00813423          	sd	s0,8(sp)
    80003c40:	01010413          	addi	s0,sp,16
}

inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80003c44:	00200793          	li	a5,2
    80003c48:	1007b073          	csrc	sstatus,a5
    mc_sstatus(Riscv::SSTATUS_SIE);
}
    80003c4c:	00813403          	ld	s0,8(sp)
    80003c50:	01010113          	addi	sp,sp,16
    80003c54:	00008067          	ret

0000000080003c58 <_ZN5Riscv9endSystemEv>:
{
    80003c58:	ff010113          	addi	sp,sp,-16
    80003c5c:	00113423          	sd	ra,8(sp)
    80003c60:	00813023          	sd	s0,0(sp)
    80003c64:	01010413          	addi	s0,sp,16
    disableInterrupts();
    80003c68:	00000097          	auipc	ra,0x0
    80003c6c:	fd0080e7          	jalr	-48(ra) # 80003c38 <_ZN5Riscv17disableInterruptsEv>
    finishSystem = true;
    80003c70:	00100793          	li	a5,1
    80003c74:	0000b717          	auipc	a4,0xb
    80003c78:	9cf70a23          	sb	a5,-1580(a4) # 8000e648 <_ZN5Riscv12finishSystemE>
        pcb = Scheduler::get();
    80003c7c:	00000097          	auipc	ra,0x0
    80003c80:	874080e7          	jalr	-1932(ra) # 800034f0 <_ZN9Scheduler3getEv>
        if(pcb == 0) break;
    80003c84:	fe051ce3          	bnez	a0,80003c7c <_ZN5Riscv9endSystemEv+0x24>
    Scheduler::put(PCB::consolePCB);
    80003c88:	00007797          	auipc	a5,0x7
    80003c8c:	8c87b783          	ld	a5,-1848(a5) # 8000a550 <_GLOBAL_OFFSET_TABLE_+0x58>
    80003c90:	0007b503          	ld	a0,0(a5)
    80003c94:	00000097          	auipc	ra,0x0
    80003c98:	808080e7          	jalr	-2040(ra) # 8000349c <_ZN9Scheduler3putEP3PCB>
    KConsole::pendingGetc = 0;
    80003c9c:	00007797          	auipc	a5,0x7
    80003ca0:	8847b783          	ld	a5,-1916(a5) # 8000a520 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003ca4:	0007b023          	sd	zero,0(a5)
    enableInterrupts();
    80003ca8:	00000097          	auipc	ra,0x0
    80003cac:	f70080e7          	jalr	-144(ra) # 80003c18 <_ZN5Riscv16enableInterruptsEv>
    while(!PCB::consolePCB->isFinished())
    80003cb0:	00007797          	auipc	a5,0x7
    80003cb4:	8a07b783          	ld	a5,-1888(a5) # 8000a550 <_GLOBAL_OFFSET_TABLE_+0x58>
    80003cb8:	0007b503          	ld	a0,0(a5)
    80003cbc:	ffffe097          	auipc	ra,0xffffe
    80003cc0:	5d0080e7          	jalr	1488(ra) # 8000228c <_ZN3PCB10isFinishedEv>
    80003cc4:	00051863          	bnez	a0,80003cd4 <_ZN5Riscv9endSystemEv+0x7c>
        thread_dispatch();
    80003cc8:	ffffe097          	auipc	ra,0xffffe
    80003ccc:	03c080e7          	jalr	60(ra) # 80001d04 <_Z15thread_dispatchv>
    while(!PCB::consolePCB->isFinished())
    80003cd0:	fe1ff06f          	j	80003cb0 <_ZN5Riscv9endSystemEv+0x58>
    disableInterrupts();
    80003cd4:	00000097          	auipc	ra,0x0
    80003cd8:	f64080e7          	jalr	-156(ra) # 80003c38 <_ZN5Riscv17disableInterruptsEv>
}
    80003cdc:	00813083          	ld	ra,8(sp)
    80003ce0:	00013403          	ld	s0,0(sp)
    80003ce4:	01010113          	addi	sp,sp,16
    80003ce8:	00008067          	ret

0000000080003cec <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie()
{
    80003cec:	ff010113          	addi	sp,sp,-16
    80003cf0:	00813423          	sd	s0,8(sp)
    80003cf4:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80003cf8:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80003cfc:	10200073          	sret
}
    80003d00:	00813403          	ld	s0,8(sp)
    80003d04:	01010113          	addi	sp,sp,16
    80003d08:	00008067          	ret

0000000080003d0c <_ZN5Riscv10kernelMainEv>:
    }
}

void Riscv::kernelMain()
{
    if(kernelMainCalled) return;
    80003d0c:	0000b797          	auipc	a5,0xb
    80003d10:	93d7c783          	lbu	a5,-1731(a5) # 8000e649 <_ZN5Riscv16kernelMainCalledE>
    80003d14:	00078463          	beqz	a5,80003d1c <_ZN5Riscv10kernelMainEv+0x10>
    80003d18:	00008067          	ret
{
    80003d1c:	ff010113          	addi	sp,sp,-16
    80003d20:	00113423          	sd	ra,8(sp)
    80003d24:	00813023          	sd	s0,0(sp)
    80003d28:	01010413          	addi	s0,sp,16
    kernelMainCalled = true;
    80003d2c:	00100793          	li	a5,1
    80003d30:	0000b717          	auipc	a4,0xb
    80003d34:	90f70ca3          	sb	a5,-1767(a4) # 8000e649 <_ZN5Riscv16kernelMainCalledE>

    initSystem();
    80003d38:	00000097          	auipc	ra,0x0
    80003d3c:	ea4080e7          	jalr	-348(ra) # 80003bdc <_ZN5Riscv10initSystemEv>
    buddyOnlyAllocsTest1();
    80003d40:	00000097          	auipc	ra,0x0
    80003d44:	8c4080e7          	jalr	-1852(ra) # 80003604 <_Z20buddyOnlyAllocsTest1v>
    {
        thread_dispatch();
    }*/

    //printString("End...\n");
    endSystem();
    80003d48:	00000097          	auipc	ra,0x0
    80003d4c:	f10080e7          	jalr	-240(ra) # 80003c58 <_ZN5Riscv9endSystemEv>
}
    80003d50:	00813083          	ld	ra,8(sp)
    80003d54:	00013403          	ld	s0,0(sp)
    80003d58:	01010113          	addi	sp,sp,16
    80003d5c:	00008067          	ret

0000000080003d60 <_ZN5Riscv15userMainWrapperEPv>:

void Riscv::userMainWrapper(void* )
{
    80003d60:	ff010113          	addi	sp,sp,-16
    80003d64:	00113423          	sd	ra,8(sp)
    80003d68:	00813023          	sd	s0,0(sp)
    80003d6c:	01010413          	addi	s0,sp,16
    userMain();
    80003d70:	00002097          	auipc	ra,0x2
    80003d74:	930080e7          	jalr	-1744(ra) # 800056a0 <_Z8userMainv>
}
    80003d78:	00813083          	ld	ra,8(sp)
    80003d7c:	00013403          	ld	s0,0(sp)
    80003d80:	01010113          	addi	sp,sp,16
    80003d84:	00008067          	ret

0000000080003d88 <_ZN5Riscv22disableTimerInterruptsEv>:

void Riscv::disableTimerInterrupts()
{
    80003d88:	ff010113          	addi	sp,sp,-16
    80003d8c:	00813423          	sd	s0,8(sp)
    80003d90:	01010413          	addi	s0,sp,16
    uint64 x = 0x2;
    __asm__ volatile("csrc sie, %0"::"r"(x));
    80003d94:	00200793          	li	a5,2
    80003d98:	1047b073          	csrc	sie,a5
}
    80003d9c:	00813403          	ld	s0,8(sp)
    80003da0:	01010113          	addi	sp,sp,16
    80003da4:	00008067          	ret

0000000080003da8 <_ZN5Riscv13w_a0_sscratchEv>:

void Riscv::w_a0_sscratch()
{
    80003da8:	ff010113          	addi	sp,sp,-16
    80003dac:	00813423          	sd	s0,8(sp)
    80003db0:	01010413          	addi	s0,sp,16
    uint64 a1Temp;
    __asm__ volatile("mv %0, a1":"=r"(a1Temp));
    80003db4:	00058793          	mv	a5,a1
    __asm__ volatile("mv a1, %0"::"r"(PCB::running->sscratch));
    80003db8:	00006717          	auipc	a4,0x6
    80003dbc:	7a873703          	ld	a4,1960(a4) # 8000a560 <_GLOBAL_OFFSET_TABLE_+0x68>
    80003dc0:	00073703          	ld	a4,0(a4)
    80003dc4:	01073703          	ld	a4,16(a4)
    80003dc8:	00070593          	mv	a1,a4
    __asm__ volatile("sd a0, 80(a1)");
    80003dcc:	04a5b823          	sd	a0,80(a1)
    __asm__ volatile("mv a1,%0"::"r"(a1Temp));
    80003dd0:	00078593          	mv	a1,a5
}
    80003dd4:	00813403          	ld	s0,8(sp)
    80003dd8:	01010113          	addi	sp,sp,16
    80003ddc:	00008067          	ret

0000000080003de0 <_ZN5Riscv14changePrivModeEv>:

void Riscv::changePrivMode()
{
    80003de0:	ff010113          	addi	sp,sp,-16
    80003de4:	00813423          	sd	s0,8(sp)
    80003de8:	01010413          	addi	s0,sp,16
    if(PCB::running->systemThread)
    80003dec:	00006797          	auipc	a5,0x6
    80003df0:	7747b783          	ld	a5,1908(a5) # 8000a560 <_GLOBAL_OFFSET_TABLE_+0x68>
    80003df4:	0007b783          	ld	a5,0(a5)
    80003df8:	0007c783          	lbu	a5,0(a5)
    80003dfc:	00078c63          	beqz	a5,80003e14 <_ZN5Riscv14changePrivModeEv+0x34>
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80003e00:	10000793          	li	a5,256
    80003e04:	1007a073          	csrs	sstatus,a5
        Riscv::ms_sstatus(Riscv::SSTATUS_SPP);
    else
        Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
}
    80003e08:	00813403          	ld	s0,8(sp)
    80003e0c:	01010113          	addi	sp,sp,16
    80003e10:	00008067          	ret
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80003e14:	10000793          	li	a5,256
    80003e18:	1007b073          	csrc	sstatus,a5
    80003e1c:	fedff06f          	j	80003e08 <_ZN5Riscv14changePrivModeEv+0x28>

0000000080003e20 <_ZN5Riscv20handleSupervisorTrapEv>:
{
    80003e20:	f9010113          	addi	sp,sp,-112
    80003e24:	06113423          	sd	ra,104(sp)
    80003e28:	06813023          	sd	s0,96(sp)
    80003e2c:	04913c23          	sd	s1,88(sp)
    80003e30:	07010413          	addi	s0,sp,112
    __asm__ volatile("mv %0, a4" : "=r"(PCB::savedRegA4));
    80003e34:	00070713          	mv	a4,a4
    80003e38:	00006797          	auipc	a5,0x6
    80003e3c:	7407b783          	ld	a5,1856(a5) # 8000a578 <_GLOBAL_OFFSET_TABLE_+0x80>
    80003e40:	00e7b023          	sd	a4,0(a5)
    __asm__ volatile("csrr %0, sscratch":"=r"(PCB::running->sscratch));
    80003e44:	00006797          	auipc	a5,0x6
    80003e48:	71c7b783          	ld	a5,1820(a5) # 8000a560 <_GLOBAL_OFFSET_TABLE_+0x68>
    80003e4c:	0007b783          	ld	a5,0(a5)
    80003e50:	14002773          	csrr	a4,sscratch
    80003e54:	00e7b823          	sd	a4,16(a5)
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    80003e58:	142027f3          	csrr	a5,scause
    80003e5c:	faf43c23          	sd	a5,-72(s0)
    return scause;
    80003e60:	fb843783          	ld	a5,-72(s0)
    switch(scause)
    80003e64:	00900713          	li	a4,9
    80003e68:	02f76e63          	bltu	a4,a5,80003ea4 <_ZN5Riscv20handleSupervisorTrapEv+0x84>
    80003e6c:	00800713          	li	a4,8
    80003e70:	12e7f463          	bgeu	a5,a4,80003f98 <_ZN5Riscv20handleSupervisorTrapEv+0x178>
    80003e74:	00500713          	li	a4,5
    80003e78:	10e78a63          	beq	a5,a4,80003f8c <_ZN5Riscv20handleSupervisorTrapEv+0x16c>
    80003e7c:	00700713          	li	a4,7
    80003e80:	00e79863          	bne	a5,a4,80003e90 <_ZN5Riscv20handleSupervisorTrapEv+0x70>
            PCB::threadExitHandler();
    80003e84:	ffffe097          	auipc	ra,0xffffe
    80003e88:	42c080e7          	jalr	1068(ra) # 800022b0 <_ZN3PCB17threadExitHandlerEv>
            break;
    80003e8c:	0dc0006f          	j	80003f68 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
    switch(scause)
    80003e90:	00200713          	li	a4,2
    80003e94:	0ce79a63          	bne	a5,a4,80003f68 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
            PCB::threadExitHandler();
    80003e98:	ffffe097          	auipc	ra,0xffffe
    80003e9c:	418080e7          	jalr	1048(ra) # 800022b0 <_ZN3PCB17threadExitHandlerEv>
            break;
    80003ea0:	0c80006f          	j	80003f68 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
    switch(scause)
    80003ea4:	fff00713          	li	a4,-1
    80003ea8:	03f71713          	slli	a4,a4,0x3f
    80003eac:	00170713          	addi	a4,a4,1
    80003eb0:	02e78863          	beq	a5,a4,80003ee0 <_ZN5Riscv20handleSupervisorTrapEv+0xc0>
    80003eb4:	fff00713          	li	a4,-1
    80003eb8:	03f71713          	slli	a4,a4,0x3f
    80003ebc:	00970713          	addi	a4,a4,9
    80003ec0:	0ae79463          	bne	a5,a4,80003f68 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
            KConsole::getCharactersFromConsole();
    80003ec4:	fffff097          	auipc	ra,0xfffff
    80003ec8:	ff0080e7          	jalr	-16(ra) # 80002eb4 <_ZN8KConsole24getCharactersFromConsoleEv>
            plic_complete(plic_claim());
    80003ecc:	00002097          	auipc	ra,0x2
    80003ed0:	378080e7          	jalr	888(ra) # 80006244 <plic_claim>
    80003ed4:	00002097          	auipc	ra,0x2
    80003ed8:	3a8080e7          	jalr	936(ra) # 8000627c <plic_complete>
            break;
    80003edc:	08c0006f          	j	80003f68 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80003ee0:	141027f3          	csrr	a5,sepc
    80003ee4:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80003ee8:	fc843783          	ld	a5,-56(s0)
            uint64 volatile sepc = Riscv::r_sepc();
    80003eec:	f8f43c23          	sd	a5,-104(s0)
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003ef0:	100027f3          	csrr	a5,sstatus
    80003ef4:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80003ef8:	fc043783          	ld	a5,-64(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    80003efc:	faf43023          	sd	a5,-96(s0)
    __asm__ volatile("csrc sip, %0" : :"r"(mask));
    80003f00:	00200793          	li	a5,2
    80003f04:	1447b073          	csrc	sip,a5
            totalTime++;
    80003f08:	0000a717          	auipc	a4,0xa
    80003f0c:	74070713          	addi	a4,a4,1856 # 8000e648 <_ZN5Riscv12finishSystemE>
    80003f10:	00873783          	ld	a5,8(a4)
    80003f14:	00178793          	addi	a5,a5,1
    80003f18:	00f73423          	sd	a5,8(a4)
            PCB::timeSliceCounter++;
    80003f1c:	00006497          	auipc	s1,0x6
    80003f20:	6144b483          	ld	s1,1556(s1) # 8000a530 <_GLOBAL_OFFSET_TABLE_+0x38>
    80003f24:	0004b783          	ld	a5,0(s1)
    80003f28:	00178793          	addi	a5,a5,1
    80003f2c:	00f4b023          	sd	a5,0(s1)
            SleepPCBList::tryToWakePCBs();
    80003f30:	fffff097          	auipc	ra,0xfffff
    80003f34:	45c080e7          	jalr	1116(ra) # 8000338c <_ZN12SleepPCBList13tryToWakePCBsEv>
            if (PCB::timeSliceCounter >= PCB::running->getTimeSlice())
    80003f38:	00006797          	auipc	a5,0x6
    80003f3c:	6287b783          	ld	a5,1576(a5) # 8000a560 <_GLOBAL_OFFSET_TABLE_+0x68>
    80003f40:	0007b783          	ld	a5,0(a5)
    uint64 getTimeSlice() { return timeSlice;}
    80003f44:	0187b783          	ld	a5,24(a5)
    80003f48:	0004b703          	ld	a4,0(s1)
    80003f4c:	02f77863          	bgeu	a4,a5,80003f7c <_ZN5Riscv20handleSupervisorTrapEv+0x15c>
            Riscv::w_sstatus(sstatus);
    80003f50:	fa043783          	ld	a5,-96(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80003f54:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    80003f58:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80003f5c:	14179073          	csrw	sepc,a5
            changePrivMode();
    80003f60:	00000097          	auipc	ra,0x0
    80003f64:	e80080e7          	jalr	-384(ra) # 80003de0 <_ZN5Riscv14changePrivModeEv>
}
    80003f68:	06813083          	ld	ra,104(sp)
    80003f6c:	06013403          	ld	s0,96(sp)
    80003f70:	05813483          	ld	s1,88(sp)
    80003f74:	07010113          	addi	sp,sp,112
    80003f78:	00008067          	ret
                PCB::timeSliceCounter = 0;
    80003f7c:	0004b023          	sd	zero,0(s1)
                PCB::dispatch();
    80003f80:	ffffe097          	auipc	ra,0xffffe
    80003f84:	0e4080e7          	jalr	228(ra) # 80002064 <_ZN3PCB8dispatchEv>
    80003f88:	fc9ff06f          	j	80003f50 <_ZN5Riscv20handleSupervisorTrapEv+0x130>
            PCB::threadExitHandler();
    80003f8c:	ffffe097          	auipc	ra,0xffffe
    80003f90:	324080e7          	jalr	804(ra) # 800022b0 <_ZN3PCB17threadExitHandlerEv>
            break;
    80003f94:	fd5ff06f          	j	80003f68 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
            __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80003f98:	00050793          	mv	a5,a0
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80003f9c:	14102773          	csrr	a4,sepc
    80003fa0:	fce43c23          	sd	a4,-40(s0)
    return sepc;
    80003fa4:	fd843703          	ld	a4,-40(s0)
            uint64 volatile sepc = Riscv::r_sepc() + 4;
    80003fa8:	00470713          	addi	a4,a4,4
    80003fac:	fae43423          	sd	a4,-88(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003fb0:	10002773          	csrr	a4,sstatus
    80003fb4:	fce43823          	sd	a4,-48(s0)
    return sstatus;
    80003fb8:	fd043703          	ld	a4,-48(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    80003fbc:	fae43823          	sd	a4,-80(s0)
            switch(operation)
    80003fc0:	04300713          	li	a4,67
    80003fc4:	02f76463          	bltu	a4,a5,80003fec <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
    80003fc8:	00279793          	slli	a5,a5,0x2
    80003fcc:	00004717          	auipc	a4,0x4
    80003fd0:	30070713          	addi	a4,a4,768 # 800082cc <CONSOLE_STATUS+0x2bc>
    80003fd4:	00e787b3          	add	a5,a5,a4
    80003fd8:	0007a783          	lw	a5,0(a5)
    80003fdc:	00e787b3          	add	a5,a5,a4
    80003fe0:	00078067          	jr	a5
                    MemoryAllocator::memAllocHandler();
    80003fe4:	00000097          	auipc	ra,0x0
    80003fe8:	55c080e7          	jalr	1372(ra) # 80004540 <_ZN15MemoryAllocator15memAllocHandlerEv>
            Riscv::w_sstatus(sstatus);
    80003fec:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80003ff0:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    80003ff4:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80003ff8:	14179073          	csrw	sepc,a5
            changePrivMode();
    80003ffc:	00000097          	auipc	ra,0x0
    80004000:	de4080e7          	jalr	-540(ra) # 80003de0 <_ZN5Riscv14changePrivModeEv>
}
    80004004:	f65ff06f          	j	80003f68 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
                    MemoryAllocator::memFreeHandler();
    80004008:	00000097          	auipc	ra,0x0
    8000400c:	59c080e7          	jalr	1436(ra) # 800045a4 <_ZN15MemoryAllocator14memFreeHandlerEv>
                    break;
    80004010:	fddff06f          	j	80003fec <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    PCB::threadMakePCBHandler();
    80004014:	ffffe097          	auipc	ra,0xffffe
    80004018:	460080e7          	jalr	1120(ra) # 80002474 <_ZN3PCB20threadMakePCBHandlerEv>
                    break;
    8000401c:	fd1ff06f          	j	80003fec <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    PCB::threadCreateHandler();
    80004020:	ffffe097          	auipc	ra,0xffffe
    80004024:	370080e7          	jalr	880(ra) # 80002390 <_ZN3PCB19threadCreateHandlerEv>
                    break;
    80004028:	fc5ff06f          	j	80003fec <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    PCB::threadStartHandler();
    8000402c:	ffffe097          	auipc	ra,0xffffe
    80004030:	404080e7          	jalr	1028(ra) # 80002430 <_ZN3PCB18threadStartHandlerEv>
                    break;
    80004034:	fb9ff06f          	j	80003fec <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    PCB::threadDispatchHandler();
    80004038:	ffffe097          	auipc	ra,0xffffe
    8000403c:	2c4080e7          	jalr	708(ra) # 800022fc <_ZN3PCB21threadDispatchHandlerEv>
                    break;
    80004040:	fadff06f          	j	80003fec <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    PCB::threadExitHandler();
    80004044:	ffffe097          	auipc	ra,0xffffe
    80004048:	26c080e7          	jalr	620(ra) # 800022b0 <_ZN3PCB17threadExitHandlerEv>
                    break;
    8000404c:	fa1ff06f          	j	80003fec <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    PCB::threadSleepHandler();
    80004050:	ffffe097          	auipc	ra,0xffffe
    80004054:	2dc080e7          	jalr	732(ra) # 8000232c <_ZN3PCB18threadSleepHandlerEv>
                    break;
    80004058:	f95ff06f          	j	80003fec <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                     PCB::threadDelPCBHandler();
    8000405c:	ffffe097          	auipc	ra,0xffffe
    80004060:	4ac080e7          	jalr	1196(ra) # 80002508 <_ZN3PCB19threadDelPCBHandlerEv>
                     break;
    80004064:	f89ff06f          	j	80003fec <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KSemaphore::semOpenHandler();
    80004068:	00001097          	auipc	ra,0x1
    8000406c:	800080e7          	jalr	-2048(ra) # 80004868 <_ZN10KSemaphore14semOpenHandlerEv>
                    break;
    80004070:	f7dff06f          	j	80003fec <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KSemaphore::semWaitHandler();
    80004074:	00001097          	auipc	ra,0x1
    80004078:	894080e7          	jalr	-1900(ra) # 80004908 <_ZN10KSemaphore14semWaitHandlerEv>
                    break;
    8000407c:	f71ff06f          	j	80003fec <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KSemaphore::semSignalHandler();
    80004080:	00001097          	auipc	ra,0x1
    80004084:	8dc080e7          	jalr	-1828(ra) # 8000495c <_ZN10KSemaphore16semSignalHandlerEv>
                    break;
    80004088:	f65ff06f          	j	80003fec <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KSemaphore::semCloseHandler();
    8000408c:	00001097          	auipc	ra,0x1
    80004090:	914080e7          	jalr	-1772(ra) # 800049a0 <_ZN10KSemaphore15semCloseHandlerEv>
                    break;
    80004094:	f59ff06f          	j	80003fec <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KConsole::getcHandler();
    80004098:	fffff097          	auipc	ra,0xfffff
    8000409c:	020080e7          	jalr	32(ra) # 800030b8 <_ZN8KConsole11getcHandlerEv>
                    break;
    800040a0:	f4dff06f          	j	80003fec <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KConsole::putcHandler();
    800040a4:	fffff097          	auipc	ra,0xfffff
    800040a8:	fe4080e7          	jalr	-28(ra) # 80003088 <_ZN8KConsole11putcHandlerEv>
                    break;
    800040ac:	f41ff06f          	j	80003fec <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KConsole::getCharHandler();
    800040b0:	fffff097          	auipc	ra,0xfffff
    800040b4:	164080e7          	jalr	356(ra) # 80003214 <_ZN8KConsole14getCharHandlerEv>
                    break;
    800040b8:	f35ff06f          	j	80003fec <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>

00000000800040bc <_ZN15MemoryAllocator10initMemoryEv>:
{
    return tryToFreeSegment(addr);
}

void MemoryAllocator::initMemory()
{
    800040bc:	ff010113          	addi	sp,sp,-16
    800040c0:	00813423          	sd	s0,8(sp)
    800040c4:	01010413          	addi	s0,sp,16
    if(memoryInitiliaized == 1)
    800040c8:	0000a717          	auipc	a4,0xa
    800040cc:	59072703          	lw	a4,1424(a4) # 8000e658 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    800040d0:	00100793          	li	a5,1
    800040d4:	04f70263          	beq	a4,a5,80004118 <_ZN15MemoryAllocator10initMemoryEv+0x5c>
        return;
    memoryInitiliaized = 1;
    800040d8:	0000a797          	auipc	a5,0xa
    800040dc:	58078793          	addi	a5,a5,1408 # 8000e658 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    800040e0:	00100713          	li	a4,1
    800040e4:	00e7a023          	sw	a4,0(a5)
    headAllocated = 0;
    800040e8:	0007b423          	sd	zero,8(a5)
    headFree = (BlockHeader*)HEAP_START_ADDR;
    800040ec:	00006717          	auipc	a4,0x6
    800040f0:	42473703          	ld	a4,1060(a4) # 8000a510 <_GLOBAL_OFFSET_TABLE_+0x18>
    800040f4:	00073703          	ld	a4,0(a4)
    800040f8:	00e7b823          	sd	a4,16(a5)
    headFree->next = 0;
    800040fc:	00073423          	sd	zero,8(a4)
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1 - sizeof(BlockHeader));
    80004100:	00006797          	auipc	a5,0x6
    80004104:	4687b783          	ld	a5,1128(a5) # 8000a568 <_GLOBAL_OFFSET_TABLE_+0x70>
    80004108:	0007b783          	ld	a5,0(a5)
    8000410c:	40e787b3          	sub	a5,a5,a4
    80004110:	ff178793          	addi	a5,a5,-15
    80004114:	00f73023          	sd	a5,0(a4)
}
    80004118:	00813403          	ld	s0,8(sp)
    8000411c:	01010113          	addi	sp,sp,16
    80004120:	00008067          	ret

0000000080004124 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_>:

void MemoryAllocator::insertAllFragment(void *addr, size_t size, void* nxtAddr)
{
    80004124:	fd010113          	addi	sp,sp,-48
    80004128:	02113423          	sd	ra,40(sp)
    8000412c:	02813023          	sd	s0,32(sp)
    80004130:	00913c23          	sd	s1,24(sp)
    80004134:	01213823          	sd	s2,16(sp)
    80004138:	01313423          	sd	s3,8(sp)
    8000413c:	03010413          	addi	s0,sp,48
    80004140:	00050493          	mv	s1,a0
    80004144:	00058993          	mv	s3,a1
    80004148:	00060913          	mv	s2,a2
    initMemory();
    8000414c:	00000097          	auipc	ra,0x0
    80004150:	f70080e7          	jalr	-144(ra) # 800040bc <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    80004154:	0004b423          	sd	zero,8(s1)
    newAllocated->size = size;
    80004158:	0134b023          	sd	s3,0(s1)
    if(headAllocated == 0)
    8000415c:	0000a797          	auipc	a5,0xa
    80004160:	5047b783          	ld	a5,1284(a5) # 8000e660 <_ZN15MemoryAllocator13headAllocatedE>
    80004164:	02078e63          	beqz	a5,800041a0 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x7c>
    {
        headAllocated = newAllocated;
    }
    else if(nxtAddr <= HEAP_END_ADDR)
    80004168:	00006717          	auipc	a4,0x6
    8000416c:	40073703          	ld	a4,1024(a4) # 8000a568 <_GLOBAL_OFFSET_TABLE_+0x70>
    80004170:	00073703          	ld	a4,0(a4)
    80004174:	03276c63          	bltu	a4,s2,800041ac <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x88>
    {
        BlockHeader * allFrag = (BlockHeader*)nxtAddr;
        newAllocated->next = allFrag->next;
    80004178:	00893783          	ld	a5,8(s2)
    8000417c:	00f4b423          	sd	a5,8(s1)
        allFrag->next = newAllocated;
    80004180:	00993423          	sd	s1,8(s2)
    else
    {
        newAllocated->next = headAllocated;
        headAllocated = newAllocated;
    }
}
    80004184:	02813083          	ld	ra,40(sp)
    80004188:	02013403          	ld	s0,32(sp)
    8000418c:	01813483          	ld	s1,24(sp)
    80004190:	01013903          	ld	s2,16(sp)
    80004194:	00813983          	ld	s3,8(sp)
    80004198:	03010113          	addi	sp,sp,48
    8000419c:	00008067          	ret
        headAllocated = newAllocated;
    800041a0:	0000a797          	auipc	a5,0xa
    800041a4:	4c97b023          	sd	s1,1216(a5) # 8000e660 <_ZN15MemoryAllocator13headAllocatedE>
    800041a8:	fddff06f          	j	80004184 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x60>
        newAllocated->next = headAllocated;
    800041ac:	00f4b423          	sd	a5,8(s1)
        headAllocated = newAllocated;
    800041b0:	0000a797          	auipc	a5,0xa
    800041b4:	4a97b823          	sd	s1,1200(a5) # 8000e660 <_ZN15MemoryAllocator13headAllocatedE>
}
    800041b8:	fcdff06f          	j	80004184 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x60>

00000000800041bc <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>:

void MemoryAllocator::insertNewAllocatedFragment(void *addr, size_t size)
{
    800041bc:	fe010113          	addi	sp,sp,-32
    800041c0:	00113c23          	sd	ra,24(sp)
    800041c4:	00813823          	sd	s0,16(sp)
    800041c8:	00913423          	sd	s1,8(sp)
    800041cc:	01213023          	sd	s2,0(sp)
    800041d0:	02010413          	addi	s0,sp,32
    800041d4:	00050493          	mv	s1,a0
    800041d8:	00058913          	mv	s2,a1
    initMemory();
    800041dc:	00000097          	auipc	ra,0x0
    800041e0:	ee0080e7          	jalr	-288(ra) # 800040bc <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr =  headAllocated;
    800041e4:	0000a797          	auipc	a5,0xa
    800041e8:	47c7b783          	ld	a5,1148(a5) # 8000e660 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    800041ec:	0004b423          	sd	zero,8(s1)
    newAllocated->size = size;
    800041f0:	0124b023          	sd	s2,0(s1)
    BlockHeader* prev = 0;
    800041f4:	00000713          	li	a4,0
    while(curr != 0)
    800041f8:	00078c63          	beqz	a5,80004210 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x54>
    {
        if((void*)curr > addr)
    800041fc:	00f4e863          	bltu	s1,a5,8000420c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x50>
        {
            newAllocated->next = curr;
            break;
        }
        prev = curr;
    80004200:	00078713          	mv	a4,a5
        curr = curr->next;
    80004204:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80004208:	ff1ff06f          	j	800041f8 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x3c>
            newAllocated->next = curr;
    8000420c:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    80004210:	02070063          	beqz	a4,80004230 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x74>
        headAllocated = newAllocated;
    else
        prev->next = newAllocated;
    80004214:	00973423          	sd	s1,8(a4)
}
    80004218:	01813083          	ld	ra,24(sp)
    8000421c:	01013403          	ld	s0,16(sp)
    80004220:	00813483          	ld	s1,8(sp)
    80004224:	00013903          	ld	s2,0(sp)
    80004228:	02010113          	addi	sp,sp,32
    8000422c:	00008067          	ret
        headAllocated = newAllocated;
    80004230:	0000a797          	auipc	a5,0xa
    80004234:	4297b823          	sd	s1,1072(a5) # 8000e660 <_ZN15MemoryAllocator13headAllocatedE>
    80004238:	fe1ff06f          	j	80004218 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x5c>

000000008000423c <_ZN15MemoryAllocator21tryToAllocateFragmentEm>:

void* MemoryAllocator::tryToAllocateFragment(size_t size)
{
    8000423c:	fe010113          	addi	sp,sp,-32
    80004240:	00113c23          	sd	ra,24(sp)
    80004244:	00813823          	sd	s0,16(sp)
    80004248:	00913423          	sd	s1,8(sp)
    8000424c:	01213023          	sd	s2,0(sp)
    80004250:	02010413          	addi	s0,sp,32
    80004254:	00050913          	mv	s2,a0
    initMemory();
    80004258:	00000097          	auipc	ra,0x0
    8000425c:	e64080e7          	jalr	-412(ra) # 800040bc <_ZN15MemoryAllocator10initMemoryEv>
    uint64 retval = 0;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80004260:	0000a497          	auipc	s1,0xa
    80004264:	4084b483          	ld	s1,1032(s1) # 8000e668 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* prev = 0;
    80004268:	00000713          	li	a4,0
    while(curr != 0)
    8000426c:	0c048063          	beqz	s1,8000432c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xf0>
    {
        if(curr->size >= size)
    80004270:	0004b783          	ld	a5,0(s1)
    80004274:	0127f863          	bgeu	a5,s2,80004284 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x48>
            //insertNewAllocatedFragment(oldAddr, size);
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
            retval = oldA;
            break;
        }
        prev = curr;
    80004278:	00048713          	mv	a4,s1
        curr = curr->next;
    8000427c:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80004280:	fedff06f          	j	8000426c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x30>
            void* newAddr = ((char*)curr + size + sizeof(BlockHeader));
    80004284:	01090693          	addi	a3,s2,16
    80004288:	00d486b3          	add	a3,s1,a3
            void* nxtAllFrag = ((char*)curr + curr->size + sizeof(BlockHeader));
    8000428c:	01078613          	addi	a2,a5,16
    80004290:	00c48633          	add	a2,s1,a2
            if(newAddr <= HEAP_END_ADDR)
    80004294:	00006597          	auipc	a1,0x6
    80004298:	2d45b583          	ld	a1,724(a1) # 8000a568 <_GLOBAL_OFFSET_TABLE_+0x70>
    8000429c:	0005b583          	ld	a1,0(a1)
    800042a0:	06d5e063          	bltu	a1,a3,80004300 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xc4>
                uint64 size2 = curr->size - size;
    800042a4:	412785b3          	sub	a1,a5,s2
                if(size2 > sizeof(BlockHeader))
    800042a8:	01000513          	li	a0,16
    800042ac:	02b57663          	bgeu	a0,a1,800042d8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x9c>
                    newFree->next = curr->next;
    800042b0:	0084b783          	ld	a5,8(s1)
    800042b4:	00f6b423          	sd	a5,8(a3)
                    newFree->size = size2 - sizeof(BlockHeader);
    800042b8:	ff058593          	addi	a1,a1,-16
    800042bc:	00b6b023          	sd	a1,0(a3)
                    if (prev != 0)
    800042c0:	00070663          	beqz	a4,800042cc <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x90>
                        prev->next = newFree;
    800042c4:	00d73423          	sd	a3,8(a4)
    800042c8:	0400006f          	j	80004308 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                        headFree = newFree;
    800042cc:	0000a797          	auipc	a5,0xa
    800042d0:	38d7be23          	sd	a3,924(a5) # 8000e668 <_ZN15MemoryAllocator8headFreeE>
    800042d4:	0340006f          	j	80004308 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                    if(prev != 0)
    800042d8:	00070a63          	beqz	a4,800042ec <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xb0>
                        prev->next = curr->next;
    800042dc:	0084b683          	ld	a3,8(s1)
    800042e0:	00d73423          	sd	a3,8(a4)
                    size+=size2;
    800042e4:	00078913          	mv	s2,a5
    800042e8:	0200006f          	j	80004308 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                        headFree = curr->next;
    800042ec:	0084b703          	ld	a4,8(s1)
    800042f0:	0000a697          	auipc	a3,0xa
    800042f4:	36e6bc23          	sd	a4,888(a3) # 8000e668 <_ZN15MemoryAllocator8headFreeE>
                    size+=size2;
    800042f8:	00078913          	mv	s2,a5
    800042fc:	00c0006f          	j	80004308 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                if(prev != 0)
    80004300:	02070063          	beqz	a4,80004320 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe4>
                    prev->next = 0;
    80004304:	00073423          	sd	zero,8(a4)
            insertAllFragment(oldAddr, size, nxtAllFrag);
    80004308:	00090593          	mv	a1,s2
    8000430c:	00048513          	mv	a0,s1
    80004310:	00000097          	auipc	ra,0x0
    80004314:	e14080e7          	jalr	-492(ra) # 80004124 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_>
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
    80004318:	01048513          	addi	a0,s1,16
            break;
    8000431c:	0140006f          	j	80004330 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xf4>
                    headFree = 0;
    80004320:	0000a797          	auipc	a5,0xa
    80004324:	3407b423          	sd	zero,840(a5) # 8000e668 <_ZN15MemoryAllocator8headFreeE>
    80004328:	fe1ff06f          	j	80004308 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
    uint64 retval = 0;
    8000432c:	00000513          	li	a0,0
    }

    return (void*)retval;
}
    80004330:	01813083          	ld	ra,24(sp)
    80004334:	01013403          	ld	s0,16(sp)
    80004338:	00813483          	ld	s1,8(sp)
    8000433c:	00013903          	ld	s2,0(sp)
    80004340:	02010113          	addi	sp,sp,32
    80004344:	00008067          	ret

0000000080004348 <_ZN15MemoryAllocator9mem_allocEm>:
{
    80004348:	ff010113          	addi	sp,sp,-16
    8000434c:	00113423          	sd	ra,8(sp)
    80004350:	00813023          	sd	s0,0(sp)
    80004354:	01010413          	addi	s0,sp,16
    return tryToAllocateFragment(size);
    80004358:	00000097          	auipc	ra,0x0
    8000435c:	ee4080e7          	jalr	-284(ra) # 8000423c <_ZN15MemoryAllocator21tryToAllocateFragmentEm>
}
    80004360:	00813083          	ld	ra,8(sp)
    80004364:	00013403          	ld	s0,0(sp)
    80004368:	01010113          	addi	sp,sp,16
    8000436c:	00008067          	ret

0000000080004370 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>:

void MemoryAllocator::insertNewFreeSegment(void* addr, size_t size)
{
    80004370:	fe010113          	addi	sp,sp,-32
    80004374:	00113c23          	sd	ra,24(sp)
    80004378:	00813823          	sd	s0,16(sp)
    8000437c:	00913423          	sd	s1,8(sp)
    80004380:	01213023          	sd	s2,0(sp)
    80004384:	02010413          	addi	s0,sp,32
    80004388:	00050493          	mv	s1,a0
    8000438c:	00058913          	mv	s2,a1
    initMemory();
    80004390:	00000097          	auipc	ra,0x0
    80004394:	d2c080e7          	jalr	-724(ra) # 800040bc <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80004398:	0000a797          	auipc	a5,0xa
    8000439c:	2d07b783          	ld	a5,720(a5) # 8000e668 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* newSegment = (BlockHeader*)addr;
    newSegment->size = size;
    800043a0:	0124b023          	sd	s2,0(s1)
    newSegment->next = 0;
    800043a4:	0004b423          	sd	zero,8(s1)
    BlockHeader* prev = 0;
    800043a8:	00000713          	li	a4,0
    while(curr != 0)
    800043ac:	00078c63          	beqz	a5,800043c4 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x54>
    {
        if((void*)curr > addr)
    800043b0:	00f4e863          	bltu	s1,a5,800043c0 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x50>
        {
            newSegment->next = curr;
            break;
        }

        prev = curr;
    800043b4:	00078713          	mv	a4,a5
        curr = curr->next;
    800043b8:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    800043bc:	ff1ff06f          	j	800043ac <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x3c>
            newSegment->next = curr;
    800043c0:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    800043c4:	04070663          	beqz	a4,80004410 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xa0>
        headFree = newSegment;
    else
        prev->next = newSegment;
    800043c8:	00973423          	sd	s1,8(a4)

    if(newSegment->next != 0 && (char*)newSegment->next == (char*)newSegment + newSegment->size + sizeof(BlockHeader))
    800043cc:	0084b783          	ld	a5,8(s1)
    800043d0:	00078a63          	beqz	a5,800043e4 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
    800043d4:	0004b603          	ld	a2,0(s1)
    800043d8:	01060693          	addi	a3,a2,16
    800043dc:	00d486b3          	add	a3,s1,a3
    800043e0:	02d78e63          	beq	a5,a3,8000441c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xac>
    {
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
        newSegment->next = newSegment->next->next;
    }

    if(prev != 0 && (char*)newSegment == (char*)prev + prev->size + sizeof(BlockHeader))
    800043e4:	00070a63          	beqz	a4,800043f8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>
    800043e8:	00073683          	ld	a3,0(a4)
    800043ec:	01068793          	addi	a5,a3,16
    800043f0:	00f707b3          	add	a5,a4,a5
    800043f4:	04978263          	beq	a5,s1,80004438 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xc8>
    {
        prev->size+=newSegment->size + sizeof(BlockHeader);
        prev->next = newSegment->next;
    }
}
    800043f8:	01813083          	ld	ra,24(sp)
    800043fc:	01013403          	ld	s0,16(sp)
    80004400:	00813483          	ld	s1,8(sp)
    80004404:	00013903          	ld	s2,0(sp)
    80004408:	02010113          	addi	sp,sp,32
    8000440c:	00008067          	ret
        headFree = newSegment;
    80004410:	0000a797          	auipc	a5,0xa
    80004414:	2497bc23          	sd	s1,600(a5) # 8000e668 <_ZN15MemoryAllocator8headFreeE>
    80004418:	fb5ff06f          	j	800043cc <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x5c>
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
    8000441c:	0007b683          	ld	a3,0(a5)
    80004420:	00d60633          	add	a2,a2,a3
    80004424:	01060613          	addi	a2,a2,16
    80004428:	00c4b023          	sd	a2,0(s1)
        newSegment->next = newSegment->next->next;
    8000442c:	0087b783          	ld	a5,8(a5)
    80004430:	00f4b423          	sd	a5,8(s1)
    80004434:	fb1ff06f          	j	800043e4 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
        prev->size+=newSegment->size + sizeof(BlockHeader);
    80004438:	0004b783          	ld	a5,0(s1)
    8000443c:	00f686b3          	add	a3,a3,a5
    80004440:	01068693          	addi	a3,a3,16
    80004444:	00d73023          	sd	a3,0(a4)
        prev->next = newSegment->next;
    80004448:	0084b783          	ld	a5,8(s1)
    8000444c:	00f73423          	sd	a5,8(a4)
}
    80004450:	fa9ff06f          	j	800043f8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>

0000000080004454 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>:

uint64 MemoryAllocator::tryToFreeSegment(void* addr)
{
    80004454:	fe010113          	addi	sp,sp,-32
    80004458:	00113c23          	sd	ra,24(sp)
    8000445c:	00813823          	sd	s0,16(sp)
    80004460:	00913423          	sd	s1,8(sp)
    80004464:	01213023          	sd	s2,0(sp)
    80004468:	02010413          	addi	s0,sp,32
    8000446c:	00050913          	mv	s2,a0
    initMemory();
    80004470:	00000097          	auipc	ra,0x0
    80004474:	c4c080e7          	jalr	-948(ra) # 800040bc <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headAllocated;
    80004478:	0000a497          	auipc	s1,0xa
    8000447c:	1e84b483          	ld	s1,488(s1) # 8000e660 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* prev = 0;
    80004480:	00000713          	li	a4,0
    while(curr != 0)
    80004484:	02048a63          	beqz	s1,800044b8 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x64>
    {
        if(addr == (void*)((char*)curr + sizeof(BlockHeader)))
    80004488:	01048793          	addi	a5,s1,16
    8000448c:	01278863          	beq	a5,s2,8000449c <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x48>
            insertNewFreeSegment((void*)curr, curr->size);

            break;
        }

        prev = curr;
    80004490:	00048713          	mv	a4,s1
        curr = curr->next;
    80004494:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80004498:	fedff06f          	j	80004484 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x30>
            if(prev != 0)
    8000449c:	02070e63          	beqz	a4,800044d8 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x84>
                prev->next = curr->next;
    800044a0:	0084b783          	ld	a5,8(s1)
    800044a4:	00f73423          	sd	a5,8(a4)
            insertNewFreeSegment((void*)curr, curr->size);
    800044a8:	0004b583          	ld	a1,0(s1)
    800044ac:	00048513          	mv	a0,s1
    800044b0:	00000097          	auipc	ra,0x0
    800044b4:	ec0080e7          	jalr	-320(ra) # 80004370 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>
    }

    if(curr != 0)
    800044b8:	02048863          	beqz	s1,800044e8 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x94>
        return 0;
    800044bc:	00000513          	li	a0,0
    else
        return 1;
}
    800044c0:	01813083          	ld	ra,24(sp)
    800044c4:	01013403          	ld	s0,16(sp)
    800044c8:	00813483          	ld	s1,8(sp)
    800044cc:	00013903          	ld	s2,0(sp)
    800044d0:	02010113          	addi	sp,sp,32
    800044d4:	00008067          	ret
                headAllocated = curr->next;
    800044d8:	0084b783          	ld	a5,8(s1)
    800044dc:	0000a717          	auipc	a4,0xa
    800044e0:	18f73223          	sd	a5,388(a4) # 8000e660 <_ZN15MemoryAllocator13headAllocatedE>
    800044e4:	fc5ff06f          	j	800044a8 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x54>
        return 1;
    800044e8:	00100513          	li	a0,1
    800044ec:	fd5ff06f          	j	800044c0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x6c>

00000000800044f0 <_ZN15MemoryAllocator8mem_freeEPv>:
{
    800044f0:	ff010113          	addi	sp,sp,-16
    800044f4:	00113423          	sd	ra,8(sp)
    800044f8:	00813023          	sd	s0,0(sp)
    800044fc:	01010413          	addi	s0,sp,16
    return tryToFreeSegment(addr);
    80004500:	00000097          	auipc	ra,0x0
    80004504:	f54080e7          	jalr	-172(ra) # 80004454 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>
}
    80004508:	00813083          	ld	ra,8(sp)
    8000450c:	00013403          	ld	s0,0(sp)
    80004510:	01010113          	addi	sp,sp,16
    80004514:	00008067          	ret

0000000080004518 <_ZN15MemoryAllocator7kmallocEm>:
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    Riscv::w_a0_sscratch();
}

void* MemoryAllocator::kmalloc(size_t size)
{
    80004518:	ff010113          	addi	sp,sp,-16
    8000451c:	00113423          	sd	ra,8(sp)
    80004520:	00813023          	sd	s0,0(sp)
    80004524:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    80004528:	00000097          	auipc	ra,0x0
    8000452c:	e20080e7          	jalr	-480(ra) # 80004348 <_ZN15MemoryAllocator9mem_allocEm>
}
    80004530:	00813083          	ld	ra,8(sp)
    80004534:	00013403          	ld	s0,0(sp)
    80004538:	01010113          	addi	sp,sp,16
    8000453c:	00008067          	ret

0000000080004540 <_ZN15MemoryAllocator15memAllocHandlerEv>:
{
    80004540:	ff010113          	addi	sp,sp,-16
    80004544:	00113423          	sd	ra,8(sp)
    80004548:	00813023          	sd	s0,0(sp)
    8000454c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(size));
    80004550:	00058513          	mv	a0,a1
    void* allocatedAddr = kmalloc(size);
    80004554:	00651513          	slli	a0,a0,0x6
    80004558:	00000097          	auipc	ra,0x0
    8000455c:	fc0080e7          	jalr	-64(ra) # 80004518 <_ZN15MemoryAllocator7kmallocEm>
    __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
    80004560:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    80004564:	00000097          	auipc	ra,0x0
    80004568:	844080e7          	jalr	-1980(ra) # 80003da8 <_ZN5Riscv13w_a0_sscratchEv>
}
    8000456c:	00813083          	ld	ra,8(sp)
    80004570:	00013403          	ld	s0,0(sp)
    80004574:	01010113          	addi	sp,sp,16
    80004578:	00008067          	ret

000000008000457c <_ZN15MemoryAllocator5kfreeEPv>:

uint64 MemoryAllocator::kfree(void* p)
{
    8000457c:	ff010113          	addi	sp,sp,-16
    80004580:	00113423          	sd	ra,8(sp)
    80004584:	00813023          	sd	s0,0(sp)
    80004588:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_free(p);
    8000458c:	00000097          	auipc	ra,0x0
    80004590:	f64080e7          	jalr	-156(ra) # 800044f0 <_ZN15MemoryAllocator8mem_freeEPv>
    80004594:	00813083          	ld	ra,8(sp)
    80004598:	00013403          	ld	s0,0(sp)
    8000459c:	01010113          	addi	sp,sp,16
    800045a0:	00008067          	ret

00000000800045a4 <_ZN15MemoryAllocator14memFreeHandlerEv>:
{
    800045a4:	ff010113          	addi	sp,sp,-16
    800045a8:	00113423          	sd	ra,8(sp)
    800045ac:	00813023          	sd	s0,0(sp)
    800045b0:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(addr));
    800045b4:	00058513          	mv	a0,a1
    uint64 retval = kfree((void*)addr);
    800045b8:	00000097          	auipc	ra,0x0
    800045bc:	fc4080e7          	jalr	-60(ra) # 8000457c <_ZN15MemoryAllocator5kfreeEPv>
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    800045c0:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    800045c4:	fffff097          	auipc	ra,0xfffff
    800045c8:	7e4080e7          	jalr	2020(ra) # 80003da8 <_ZN5Riscv13w_a0_sscratchEv>
}
    800045cc:	00813083          	ld	ra,8(sp)
    800045d0:	00013403          	ld	s0,0(sp)
    800045d4:	01010113          	addi	sp,sp,16
    800045d8:	00008067          	ret

00000000800045dc <_ZN10KSemaphoreC1Ei>:
#include "../h/KSemaphore.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/Riscv.hpp"
#include "../h/Scheduler.hpp"

KSemaphore::KSemaphore(int val)
    800045dc:	ff010113          	addi	sp,sp,-16
    800045e0:	00813423          	sd	s0,8(sp)
    800045e4:	01010413          	addi	s0,sp,16
{
    this->val = val;
    800045e8:	00b52823          	sw	a1,16(a0)
    headBlocked = tailBlocked = 0;
    800045ec:	00053423          	sd	zero,8(a0)
    800045f0:	00053023          	sd	zero,0(a0)
}
    800045f4:	00813403          	ld	s0,8(sp)
    800045f8:	01010113          	addi	sp,sp,16
    800045fc:	00008067          	ret

0000000080004600 <_ZN10KSemaphore12addToBlockedEP3PCB>:
        Scheduler::put(pcb);
    }
}

void KSemaphore::addToBlocked(PCB* pcb)
{
    80004600:	ff010113          	addi	sp,sp,-16
    80004604:	00813423          	sd	s0,8(sp)
    80004608:	01010413          	addi	s0,sp,16
    pcb->nextPCB = 0;
    8000460c:	0005b423          	sd	zero,8(a1)
    if(headBlocked == 0)
    80004610:	00053783          	ld	a5,0(a0)
    80004614:	00078e63          	beqz	a5,80004630 <_ZN10KSemaphore12addToBlockedEP3PCB+0x30>
    {
        headBlocked = tailBlocked = pcb;
    }
    else
    {
        tailBlocked->nextPCB = pcb;
    80004618:	00853783          	ld	a5,8(a0)
    8000461c:	00b7b423          	sd	a1,8(a5)
        tailBlocked = pcb;
    80004620:	00b53423          	sd	a1,8(a0)
    }
}
    80004624:	00813403          	ld	s0,8(sp)
    80004628:	01010113          	addi	sp,sp,16
    8000462c:	00008067          	ret
        headBlocked = tailBlocked = pcb;
    80004630:	00b53423          	sd	a1,8(a0)
    80004634:	00b53023          	sd	a1,0(a0)
    80004638:	fedff06f          	j	80004624 <_ZN10KSemaphore12addToBlockedEP3PCB+0x24>

000000008000463c <_ZN10KSemaphore5blockEv>:

void KSemaphore::block()
{
    8000463c:	ff010113          	addi	sp,sp,-16
    80004640:	00113423          	sd	ra,8(sp)
    80004644:	00813023          	sd	s0,0(sp)
    80004648:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SUSPENDED);
    8000464c:	00006797          	auipc	a5,0x6
    80004650:	f147b783          	ld	a5,-236(a5) # 8000a560 <_GLOBAL_OFFSET_TABLE_+0x68>
    80004654:	0007b583          	ld	a1,0(a5)
    void setState(State s) {state = s;}
    80004658:	00200793          	li	a5,2
    8000465c:	04f5a023          	sw	a5,64(a1)
    addToBlocked(PCB::running);
    80004660:	00000097          	auipc	ra,0x0
    80004664:	fa0080e7          	jalr	-96(ra) # 80004600 <_ZN10KSemaphore12addToBlockedEP3PCB>
    PCB::dispatch();
    80004668:	ffffe097          	auipc	ra,0xffffe
    8000466c:	9fc080e7          	jalr	-1540(ra) # 80002064 <_ZN3PCB8dispatchEv>
}
    80004670:	00813083          	ld	ra,8(sp)
    80004674:	00013403          	ld	s0,0(sp)
    80004678:	01010113          	addi	sp,sp,16
    8000467c:	00008067          	ret

0000000080004680 <_ZN10KSemaphore4waitEv>:
    PCB::running->retFromClosedSem = false;
    80004680:	00006797          	auipc	a5,0x6
    80004684:	ee07b783          	ld	a5,-288(a5) # 8000a560 <_GLOBAL_OFFSET_TABLE_+0x68>
    80004688:	0007b783          	ld	a5,0(a5)
    8000468c:	04078c23          	sb	zero,88(a5)
    if(--val < 0)
    80004690:	01052783          	lw	a5,16(a0)
    80004694:	fff7879b          	addiw	a5,a5,-1
    80004698:	00f52823          	sw	a5,16(a0)
    8000469c:	02079713          	slli	a4,a5,0x20
    800046a0:	00074663          	bltz	a4,800046ac <_ZN10KSemaphore4waitEv+0x2c>
}
    800046a4:	00000513          	li	a0,0
    800046a8:	00008067          	ret
{
    800046ac:	ff010113          	addi	sp,sp,-16
    800046b0:	00113423          	sd	ra,8(sp)
    800046b4:	00813023          	sd	s0,0(sp)
    800046b8:	01010413          	addi	s0,sp,16
        block();
    800046bc:	00000097          	auipc	ra,0x0
    800046c0:	f80080e7          	jalr	-128(ra) # 8000463c <_ZN10KSemaphore5blockEv>
}
    800046c4:	00000513          	li	a0,0
    800046c8:	00813083          	ld	ra,8(sp)
    800046cc:	00013403          	ld	s0,0(sp)
    800046d0:	01010113          	addi	sp,sp,16
    800046d4:	00008067          	ret

00000000800046d8 <_ZN10KSemaphore15getFirstBlockedEv>:

PCB* KSemaphore::getFirstBlocked()
{
    800046d8:	ff010113          	addi	sp,sp,-16
    800046dc:	00813423          	sd	s0,8(sp)
    800046e0:	01010413          	addi	s0,sp,16
   return headBlocked;
}
    800046e4:	00053503          	ld	a0,0(a0)
    800046e8:	00813403          	ld	s0,8(sp)
    800046ec:	01010113          	addi	sp,sp,16
    800046f0:	00008067          	ret

00000000800046f4 <_ZN10KSemaphore18removeFirstBlockedEv>:

void KSemaphore::removeFirstBlocked()
{
    800046f4:	ff010113          	addi	sp,sp,-16
    800046f8:	00813423          	sd	s0,8(sp)
    800046fc:	01010413          	addi	s0,sp,16
    if(headBlocked == 0)
    80004700:	00053783          	ld	a5,0(a0)
    80004704:	00078c63          	beqz	a5,8000471c <_ZN10KSemaphore18removeFirstBlockedEv+0x28>
        return;
    PCB* first = headBlocked;
    headBlocked = headBlocked->nextPCB;
    80004708:	0087b703          	ld	a4,8(a5)
    8000470c:	00e53023          	sd	a4,0(a0)
    first->nextPCB = 0;
    80004710:	0007b423          	sd	zero,8(a5)
    if(headBlocked == 0)
    80004714:	00053783          	ld	a5,0(a0)
    80004718:	00078863          	beqz	a5,80004728 <_ZN10KSemaphore18removeFirstBlockedEv+0x34>
        tailBlocked =0;
}
    8000471c:	00813403          	ld	s0,8(sp)
    80004720:	01010113          	addi	sp,sp,16
    80004724:	00008067          	ret
        tailBlocked =0;
    80004728:	00053423          	sd	zero,8(a0)
    8000472c:	ff1ff06f          	j	8000471c <_ZN10KSemaphore18removeFirstBlockedEv+0x28>

0000000080004730 <_ZN10KSemaphoreD1Ev>:
KSemaphore::~KSemaphore()
    80004730:	fe010113          	addi	sp,sp,-32
    80004734:	00113c23          	sd	ra,24(sp)
    80004738:	00813823          	sd	s0,16(sp)
    8000473c:	00913423          	sd	s1,8(sp)
    80004740:	01213023          	sd	s2,0(sp)
    80004744:	02010413          	addi	s0,sp,32
    80004748:	00050913          	mv	s2,a0
    while(getFirstBlocked() != 0)
    8000474c:	00090513          	mv	a0,s2
    80004750:	00000097          	auipc	ra,0x0
    80004754:	f88080e7          	jalr	-120(ra) # 800046d8 <_ZN10KSemaphore15getFirstBlockedEv>
    80004758:	00050493          	mv	s1,a0
    8000475c:	02050463          	beqz	a0,80004784 <_ZN10KSemaphoreD1Ev+0x54>
        removeFirstBlocked();
    80004760:	00090513          	mv	a0,s2
    80004764:	00000097          	auipc	ra,0x0
    80004768:	f90080e7          	jalr	-112(ra) # 800046f4 <_ZN10KSemaphore18removeFirstBlockedEv>
        pcb->retFromClosedSem = true;
    8000476c:	00100793          	li	a5,1
    80004770:	04f48c23          	sb	a5,88(s1)
        Scheduler::put(pcb);
    80004774:	00048513          	mv	a0,s1
    80004778:	fffff097          	auipc	ra,0xfffff
    8000477c:	d24080e7          	jalr	-732(ra) # 8000349c <_ZN9Scheduler3putEP3PCB>
    while(getFirstBlocked() != 0)
    80004780:	fcdff06f          	j	8000474c <_ZN10KSemaphoreD1Ev+0x1c>
}
    80004784:	01813083          	ld	ra,24(sp)
    80004788:	01013403          	ld	s0,16(sp)
    8000478c:	00813483          	ld	s1,8(sp)
    80004790:	00013903          	ld	s2,0(sp)
    80004794:	02010113          	addi	sp,sp,32
    80004798:	00008067          	ret

000000008000479c <_ZN10KSemaphore7unblockEv>:

void KSemaphore::unblock() {
    8000479c:	fe010113          	addi	sp,sp,-32
    800047a0:	00113c23          	sd	ra,24(sp)
    800047a4:	00813823          	sd	s0,16(sp)
    800047a8:	00913423          	sd	s1,8(sp)
    800047ac:	01213023          	sd	s2,0(sp)
    800047b0:	02010413          	addi	s0,sp,32
    800047b4:	00050913          	mv	s2,a0
    PCB* fr = getFirstBlocked();
    800047b8:	00000097          	auipc	ra,0x0
    800047bc:	f20080e7          	jalr	-224(ra) # 800046d8 <_ZN10KSemaphore15getFirstBlockedEv>
    800047c0:	00050493          	mv	s1,a0
    removeFirstBlocked();
    800047c4:	00090513          	mv	a0,s2
    800047c8:	00000097          	auipc	ra,0x0
    800047cc:	f2c080e7          	jalr	-212(ra) # 800046f4 <_ZN10KSemaphore18removeFirstBlockedEv>
    if(fr != 0)
    800047d0:	00048863          	beqz	s1,800047e0 <_ZN10KSemaphore7unblockEv+0x44>
    {
        Scheduler::put(fr);
    800047d4:	00048513          	mv	a0,s1
    800047d8:	fffff097          	auipc	ra,0xfffff
    800047dc:	cc4080e7          	jalr	-828(ra) # 8000349c <_ZN9Scheduler3putEP3PCB>
    }
}
    800047e0:	01813083          	ld	ra,24(sp)
    800047e4:	01013403          	ld	s0,16(sp)
    800047e8:	00813483          	ld	s1,8(sp)
    800047ec:	00013903          	ld	s2,0(sp)
    800047f0:	02010113          	addi	sp,sp,32
    800047f4:	00008067          	ret

00000000800047f8 <_ZN10KSemaphore6signalEv>:
    if(++val <= 0)
    800047f8:	01052783          	lw	a5,16(a0)
    800047fc:	0017879b          	addiw	a5,a5,1
    80004800:	0007871b          	sext.w	a4,a5
    80004804:	00f52823          	sw	a5,16(a0)
    80004808:	00e05663          	blez	a4,80004814 <_ZN10KSemaphore6signalEv+0x1c>
}
    8000480c:	00000513          	li	a0,0
    80004810:	00008067          	ret
uint64 KSemaphore::signal() {
    80004814:	ff010113          	addi	sp,sp,-16
    80004818:	00113423          	sd	ra,8(sp)
    8000481c:	00813023          	sd	s0,0(sp)
    80004820:	01010413          	addi	s0,sp,16
        unblock();
    80004824:	00000097          	auipc	ra,0x0
    80004828:	f78080e7          	jalr	-136(ra) # 8000479c <_ZN10KSemaphore7unblockEv>
}
    8000482c:	00000513          	li	a0,0
    80004830:	00813083          	ld	ra,8(sp)
    80004834:	00013403          	ld	s0,0(sp)
    80004838:	01010113          	addi	sp,sp,16
    8000483c:	00008067          	ret

0000000080004840 <_ZN10KSemaphorenwEm>:
void *KSemaphore::operator new(size_t size) {
    80004840:	ff010113          	addi	sp,sp,-16
    80004844:	00113423          	sd	ra,8(sp)
    80004848:	00813023          	sd	s0,0(sp)
    8000484c:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmalloc(size);
    80004850:	00000097          	auipc	ra,0x0
    80004854:	cc8080e7          	jalr	-824(ra) # 80004518 <_ZN15MemoryAllocator7kmallocEm>
}
    80004858:	00813083          	ld	ra,8(sp)
    8000485c:	00013403          	ld	s0,0(sp)
    80004860:	01010113          	addi	sp,sp,16
    80004864:	00008067          	ret

0000000080004868 <_ZN10KSemaphore14semOpenHandlerEv>:
{
    80004868:	fd010113          	addi	sp,sp,-48
    8000486c:	02113423          	sd	ra,40(sp)
    80004870:	02813023          	sd	s0,32(sp)
    80004874:	00913c23          	sd	s1,24(sp)
    80004878:	01213823          	sd	s2,16(sp)
    8000487c:	01313423          	sd	s3,8(sp)
    80004880:	03010413          	addi	s0,sp,48
    __asm__ volatile("mv %0, a1" : "=r"(semaphoreHandle));
    80004884:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(val));
    80004888:	00060993          	mv	s3,a2
    KSemaphore* newSem = new KSemaphore(val);
    8000488c:	01800513          	li	a0,24
    80004890:	00000097          	auipc	ra,0x0
    80004894:	fb0080e7          	jalr	-80(ra) # 80004840 <_ZN10KSemaphorenwEm>
    80004898:	00050493          	mv	s1,a0
    8000489c:	0009859b          	sext.w	a1,s3
    800048a0:	00000097          	auipc	ra,0x0
    800048a4:	d3c080e7          	jalr	-708(ra) # 800045dc <_ZN10KSemaphoreC1Ei>
    (*semaphoreHandle) = newSem;
    800048a8:	00993023          	sd	s1,0(s2)
    if(newSem == 0)
    800048ac:	02048663          	beqz	s1,800048d8 <_ZN10KSemaphore14semOpenHandlerEv+0x70>
            __asm__ volatile("li a0, 0");
    800048b0:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    800048b4:	fffff097          	auipc	ra,0xfffff
    800048b8:	4f4080e7          	jalr	1268(ra) # 80003da8 <_ZN5Riscv13w_a0_sscratchEv>
}
    800048bc:	02813083          	ld	ra,40(sp)
    800048c0:	02013403          	ld	s0,32(sp)
    800048c4:	01813483          	ld	s1,24(sp)
    800048c8:	01013903          	ld	s2,16(sp)
    800048cc:	00813983          	ld	s3,8(sp)
    800048d0:	03010113          	addi	sp,sp,48
    800048d4:	00008067          	ret
            __asm__ volatile("li a0, 0xffffffffffffffff");
    800048d8:	fff00513          	li	a0,-1
    800048dc:	fd9ff06f          	j	800048b4 <_ZN10KSemaphore14semOpenHandlerEv+0x4c>

00000000800048e0 <_ZN10KSemaphoredlEPv>:

void KSemaphore::operator delete(void *p)
{
    800048e0:	ff010113          	addi	sp,sp,-16
    800048e4:	00113423          	sd	ra,8(sp)
    800048e8:	00813023          	sd	s0,0(sp)
    800048ec:	01010413          	addi	s0,sp,16
    MemoryAllocator::kfree(p);
    800048f0:	00000097          	auipc	ra,0x0
    800048f4:	c8c080e7          	jalr	-884(ra) # 8000457c <_ZN15MemoryAllocator5kfreeEPv>
}
    800048f8:	00813083          	ld	ra,8(sp)
    800048fc:	00013403          	ld	s0,0(sp)
    80004900:	01010113          	addi	sp,sp,16
    80004904:	00008067          	ret

0000000080004908 <_ZN10KSemaphore14semWaitHandlerEv>:

void KSemaphore::semWaitHandler()
{
    80004908:	ff010113          	addi	sp,sp,-16
    8000490c:	00113423          	sd	ra,8(sp)
    80004910:	00813023          	sd	s0,0(sp)
    80004914:	01010413          	addi	s0,sp,16
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80004918:	00058513          	mv	a0,a1
    kSem->wait();
    8000491c:	00000097          	auipc	ra,0x0
    80004920:	d64080e7          	jalr	-668(ra) # 80004680 <_ZN10KSemaphore4waitEv>
    if(PCB::running->retFromClosedSem)
    80004924:	00006797          	auipc	a5,0x6
    80004928:	c3c7b783          	ld	a5,-964(a5) # 8000a560 <_GLOBAL_OFFSET_TABLE_+0x68>
    8000492c:	0007b783          	ld	a5,0(a5)
    80004930:	0587c783          	lbu	a5,88(a5)
    80004934:	02078063          	beqz	a5,80004954 <_ZN10KSemaphore14semWaitHandlerEv+0x4c>
        __asm__ volatile("li a0, 0x1");
    80004938:	00100513          	li	a0,1
    else
        __asm__ volatile("li a0, 0x0");
    Riscv::w_a0_sscratch();
    8000493c:	fffff097          	auipc	ra,0xfffff
    80004940:	46c080e7          	jalr	1132(ra) # 80003da8 <_ZN5Riscv13w_a0_sscratchEv>
}
    80004944:	00813083          	ld	ra,8(sp)
    80004948:	00013403          	ld	s0,0(sp)
    8000494c:	01010113          	addi	sp,sp,16
    80004950:	00008067          	ret
        __asm__ volatile("li a0, 0x0");
    80004954:	00000513          	li	a0,0
    80004958:	fe5ff06f          	j	8000493c <_ZN10KSemaphore14semWaitHandlerEv+0x34>

000000008000495c <_ZN10KSemaphore16semSignalHandlerEv>:

void KSemaphore::semSignalHandler() {
    8000495c:	ff010113          	addi	sp,sp,-16
    80004960:	00113423          	sd	ra,8(sp)
    80004964:	00813023          	sd	s0,0(sp)
    80004968:	01010413          	addi	s0,sp,16
    KSemaphore *kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    8000496c:	00058513          	mv	a0,a1
    if (kSem == 0)
    80004970:	02050463          	beqz	a0,80004998 <_ZN10KSemaphore16semSignalHandlerEv+0x3c>
    {
        __asm__ volatile("li a0, 0x1");
    }
    else
    {
        kSem->signal();
    80004974:	00000097          	auipc	ra,0x0
    80004978:	e84080e7          	jalr	-380(ra) # 800047f8 <_ZN10KSemaphore6signalEv>
        __asm__ volatile("li a0, 0x0");
    8000497c:	00000513          	li	a0,0
    }
    Riscv::w_a0_sscratch();
    80004980:	fffff097          	auipc	ra,0xfffff
    80004984:	428080e7          	jalr	1064(ra) # 80003da8 <_ZN5Riscv13w_a0_sscratchEv>
}
    80004988:	00813083          	ld	ra,8(sp)
    8000498c:	00013403          	ld	s0,0(sp)
    80004990:	01010113          	addi	sp,sp,16
    80004994:	00008067          	ret
        __asm__ volatile("li a0, 0x1");
    80004998:	00100513          	li	a0,1
    8000499c:	fe5ff06f          	j	80004980 <_ZN10KSemaphore16semSignalHandlerEv+0x24>

00000000800049a0 <_ZN10KSemaphore15semCloseHandlerEv>:

void KSemaphore::semCloseHandler()
{
    800049a0:	fe010113          	addi	sp,sp,-32
    800049a4:	00113c23          	sd	ra,24(sp)
    800049a8:	00813823          	sd	s0,16(sp)
    800049ac:	00913423          	sd	s1,8(sp)
    800049b0:	02010413          	addi	s0,sp,32
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    800049b4:	00058493          	mv	s1,a1
    delete kSem;
    800049b8:	00048e63          	beqz	s1,800049d4 <_ZN10KSemaphore15semCloseHandlerEv+0x34>
    800049bc:	00048513          	mv	a0,s1
    800049c0:	00000097          	auipc	ra,0x0
    800049c4:	d70080e7          	jalr	-656(ra) # 80004730 <_ZN10KSemaphoreD1Ev>
    800049c8:	00048513          	mv	a0,s1
    800049cc:	00000097          	auipc	ra,0x0
    800049d0:	f14080e7          	jalr	-236(ra) # 800048e0 <_ZN10KSemaphoredlEPv>
    __asm__ volatile("li a0, 0");
    800049d4:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    800049d8:	fffff097          	auipc	ra,0xfffff
    800049dc:	3d0080e7          	jalr	976(ra) # 80003da8 <_ZN5Riscv13w_a0_sscratchEv>
}
    800049e0:	01813083          	ld	ra,24(sp)
    800049e4:	01013403          	ld	s0,16(sp)
    800049e8:	00813483          	ld	s1,8(sp)
    800049ec:	02010113          	addi	sp,sp,32
    800049f0:	00008067          	ret

00000000800049f4 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    800049f4:	fe010113          	addi	sp,sp,-32
    800049f8:	00113c23          	sd	ra,24(sp)
    800049fc:	00813823          	sd	s0,16(sp)
    80004a00:	00913423          	sd	s1,8(sp)
    80004a04:	02010413          	addi	s0,sp,32
    80004a08:	00050493          	mv	s1,a0
    LOCK();
    80004a0c:	00100613          	li	a2,1
    80004a10:	00000593          	li	a1,0
    80004a14:	0000a517          	auipc	a0,0xa
    80004a18:	c5c50513          	addi	a0,a0,-932 # 8000e670 <lockPrint>
    80004a1c:	ffffc097          	auipc	ra,0xffffc
    80004a20:	7fc080e7          	jalr	2044(ra) # 80001218 <copy_and_swap>
    80004a24:	fe0514e3          	bnez	a0,80004a0c <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80004a28:	0004c503          	lbu	a0,0(s1)
    80004a2c:	00050a63          	beqz	a0,80004a40 <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    80004a30:	ffffd097          	auipc	ra,0xffffd
    80004a34:	4d8080e7          	jalr	1240(ra) # 80001f08 <_Z4putcc>
        string++;
    80004a38:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80004a3c:	fedff06f          	j	80004a28 <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    80004a40:	00000613          	li	a2,0
    80004a44:	00100593          	li	a1,1
    80004a48:	0000a517          	auipc	a0,0xa
    80004a4c:	c2850513          	addi	a0,a0,-984 # 8000e670 <lockPrint>
    80004a50:	ffffc097          	auipc	ra,0xffffc
    80004a54:	7c8080e7          	jalr	1992(ra) # 80001218 <copy_and_swap>
    80004a58:	fe0514e3          	bnez	a0,80004a40 <_Z11printStringPKc+0x4c>
}
    80004a5c:	01813083          	ld	ra,24(sp)
    80004a60:	01013403          	ld	s0,16(sp)
    80004a64:	00813483          	ld	s1,8(sp)
    80004a68:	02010113          	addi	sp,sp,32
    80004a6c:	00008067          	ret

0000000080004a70 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80004a70:	fd010113          	addi	sp,sp,-48
    80004a74:	02113423          	sd	ra,40(sp)
    80004a78:	02813023          	sd	s0,32(sp)
    80004a7c:	00913c23          	sd	s1,24(sp)
    80004a80:	01213823          	sd	s2,16(sp)
    80004a84:	01313423          	sd	s3,8(sp)
    80004a88:	01413023          	sd	s4,0(sp)
    80004a8c:	03010413          	addi	s0,sp,48
    80004a90:	00050993          	mv	s3,a0
    80004a94:	00058a13          	mv	s4,a1
    LOCK();
    80004a98:	00100613          	li	a2,1
    80004a9c:	00000593          	li	a1,0
    80004aa0:	0000a517          	auipc	a0,0xa
    80004aa4:	bd050513          	addi	a0,a0,-1072 # 8000e670 <lockPrint>
    80004aa8:	ffffc097          	auipc	ra,0xffffc
    80004aac:	770080e7          	jalr	1904(ra) # 80001218 <copy_and_swap>
    80004ab0:	fe0514e3          	bnez	a0,80004a98 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80004ab4:	00000913          	li	s2,0
    80004ab8:	00090493          	mv	s1,s2
    80004abc:	0019091b          	addiw	s2,s2,1
    80004ac0:	03495a63          	bge	s2,s4,80004af4 <_Z9getStringPci+0x84>
        cc = getc();
    80004ac4:	ffffd097          	auipc	ra,0xffffd
    80004ac8:	41c080e7          	jalr	1052(ra) # 80001ee0 <_Z4getcv>
        if(cc < 1)
    80004acc:	02050463          	beqz	a0,80004af4 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    80004ad0:	009984b3          	add	s1,s3,s1
    80004ad4:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80004ad8:	00a00793          	li	a5,10
    80004adc:	00f50a63          	beq	a0,a5,80004af0 <_Z9getStringPci+0x80>
    80004ae0:	00d00793          	li	a5,13
    80004ae4:	fcf51ae3          	bne	a0,a5,80004ab8 <_Z9getStringPci+0x48>
        buf[i++] = c;
    80004ae8:	00090493          	mv	s1,s2
    80004aec:	0080006f          	j	80004af4 <_Z9getStringPci+0x84>
    80004af0:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80004af4:	009984b3          	add	s1,s3,s1
    80004af8:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80004afc:	00000613          	li	a2,0
    80004b00:	00100593          	li	a1,1
    80004b04:	0000a517          	auipc	a0,0xa
    80004b08:	b6c50513          	addi	a0,a0,-1172 # 8000e670 <lockPrint>
    80004b0c:	ffffc097          	auipc	ra,0xffffc
    80004b10:	70c080e7          	jalr	1804(ra) # 80001218 <copy_and_swap>
    80004b14:	fe0514e3          	bnez	a0,80004afc <_Z9getStringPci+0x8c>
    return buf;
}
    80004b18:	00098513          	mv	a0,s3
    80004b1c:	02813083          	ld	ra,40(sp)
    80004b20:	02013403          	ld	s0,32(sp)
    80004b24:	01813483          	ld	s1,24(sp)
    80004b28:	01013903          	ld	s2,16(sp)
    80004b2c:	00813983          	ld	s3,8(sp)
    80004b30:	00013a03          	ld	s4,0(sp)
    80004b34:	03010113          	addi	sp,sp,48
    80004b38:	00008067          	ret

0000000080004b3c <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80004b3c:	ff010113          	addi	sp,sp,-16
    80004b40:	00813423          	sd	s0,8(sp)
    80004b44:	01010413          	addi	s0,sp,16
    80004b48:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80004b4c:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80004b50:	0006c603          	lbu	a2,0(a3)
    80004b54:	fd06071b          	addiw	a4,a2,-48
    80004b58:	0ff77713          	andi	a4,a4,255
    80004b5c:	00900793          	li	a5,9
    80004b60:	02e7e063          	bltu	a5,a4,80004b80 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80004b64:	0025179b          	slliw	a5,a0,0x2
    80004b68:	00a787bb          	addw	a5,a5,a0
    80004b6c:	0017979b          	slliw	a5,a5,0x1
    80004b70:	00168693          	addi	a3,a3,1
    80004b74:	00c787bb          	addw	a5,a5,a2
    80004b78:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80004b7c:	fd5ff06f          	j	80004b50 <_Z11stringToIntPKc+0x14>
    return n;
}
    80004b80:	00813403          	ld	s0,8(sp)
    80004b84:	01010113          	addi	sp,sp,16
    80004b88:	00008067          	ret

0000000080004b8c <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80004b8c:	fc010113          	addi	sp,sp,-64
    80004b90:	02113c23          	sd	ra,56(sp)
    80004b94:	02813823          	sd	s0,48(sp)
    80004b98:	02913423          	sd	s1,40(sp)
    80004b9c:	03213023          	sd	s2,32(sp)
    80004ba0:	01313c23          	sd	s3,24(sp)
    80004ba4:	04010413          	addi	s0,sp,64
    80004ba8:	00050493          	mv	s1,a0
    80004bac:	00058913          	mv	s2,a1
    80004bb0:	00060993          	mv	s3,a2
    LOCK();
    80004bb4:	00100613          	li	a2,1
    80004bb8:	00000593          	li	a1,0
    80004bbc:	0000a517          	auipc	a0,0xa
    80004bc0:	ab450513          	addi	a0,a0,-1356 # 8000e670 <lockPrint>
    80004bc4:	ffffc097          	auipc	ra,0xffffc
    80004bc8:	654080e7          	jalr	1620(ra) # 80001218 <copy_and_swap>
    80004bcc:	fe0514e3          	bnez	a0,80004bb4 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80004bd0:	00098463          	beqz	s3,80004bd8 <_Z8printIntiii+0x4c>
    80004bd4:	0804c463          	bltz	s1,80004c5c <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80004bd8:	0004851b          	sext.w	a0,s1
    neg = 0;
    80004bdc:	00000593          	li	a1,0
    }

    i = 0;
    80004be0:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80004be4:	0009079b          	sext.w	a5,s2
    80004be8:	0325773b          	remuw	a4,a0,s2
    80004bec:	00048613          	mv	a2,s1
    80004bf0:	0014849b          	addiw	s1,s1,1
    80004bf4:	02071693          	slli	a3,a4,0x20
    80004bf8:	0206d693          	srli	a3,a3,0x20
    80004bfc:	00006717          	auipc	a4,0x6
    80004c00:	8e470713          	addi	a4,a4,-1820 # 8000a4e0 <digits>
    80004c04:	00d70733          	add	a4,a4,a3
    80004c08:	00074683          	lbu	a3,0(a4)
    80004c0c:	fd040713          	addi	a4,s0,-48
    80004c10:	00c70733          	add	a4,a4,a2
    80004c14:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80004c18:	0005071b          	sext.w	a4,a0
    80004c1c:	0325553b          	divuw	a0,a0,s2
    80004c20:	fcf772e3          	bgeu	a4,a5,80004be4 <_Z8printIntiii+0x58>
    if(neg)
    80004c24:	00058c63          	beqz	a1,80004c3c <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    80004c28:	fd040793          	addi	a5,s0,-48
    80004c2c:	009784b3          	add	s1,a5,s1
    80004c30:	02d00793          	li	a5,45
    80004c34:	fef48823          	sb	a5,-16(s1)
    80004c38:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80004c3c:	fff4849b          	addiw	s1,s1,-1
    80004c40:	0204c463          	bltz	s1,80004c68 <_Z8printIntiii+0xdc>
        putc(buf[i]);
    80004c44:	fd040793          	addi	a5,s0,-48
    80004c48:	009787b3          	add	a5,a5,s1
    80004c4c:	ff07c503          	lbu	a0,-16(a5)
    80004c50:	ffffd097          	auipc	ra,0xffffd
    80004c54:	2b8080e7          	jalr	696(ra) # 80001f08 <_Z4putcc>
    80004c58:	fe5ff06f          	j	80004c3c <_Z8printIntiii+0xb0>
        x = -xx;
    80004c5c:	4090053b          	negw	a0,s1
        neg = 1;
    80004c60:	00100593          	li	a1,1
        x = -xx;
    80004c64:	f7dff06f          	j	80004be0 <_Z8printIntiii+0x54>

    UNLOCK();
    80004c68:	00000613          	li	a2,0
    80004c6c:	00100593          	li	a1,1
    80004c70:	0000a517          	auipc	a0,0xa
    80004c74:	a0050513          	addi	a0,a0,-1536 # 8000e670 <lockPrint>
    80004c78:	ffffc097          	auipc	ra,0xffffc
    80004c7c:	5a0080e7          	jalr	1440(ra) # 80001218 <copy_and_swap>
    80004c80:	fe0514e3          	bnez	a0,80004c68 <_Z8printIntiii+0xdc>
}
    80004c84:	03813083          	ld	ra,56(sp)
    80004c88:	03013403          	ld	s0,48(sp)
    80004c8c:	02813483          	ld	s1,40(sp)
    80004c90:	02013903          	ld	s2,32(sp)
    80004c94:	01813983          	ld	s3,24(sp)
    80004c98:	04010113          	addi	sp,sp,64
    80004c9c:	00008067          	ret

0000000080004ca0 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"
#include "printing.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80004ca0:	fd010113          	addi	sp,sp,-48
    80004ca4:	02113423          	sd	ra,40(sp)
    80004ca8:	02813023          	sd	s0,32(sp)
    80004cac:	00913c23          	sd	s1,24(sp)
    80004cb0:	01213823          	sd	s2,16(sp)
    80004cb4:	01313423          	sd	s3,8(sp)
    80004cb8:	03010413          	addi	s0,sp,48
    80004cbc:	00050493          	mv	s1,a0
    80004cc0:	00058913          	mv	s2,a1
    80004cc4:	0015879b          	addiw	a5,a1,1
    80004cc8:	0007851b          	sext.w	a0,a5
    80004ccc:	00f4a023          	sw	a5,0(s1)
    80004cd0:	0004a823          	sw	zero,16(s1)
    80004cd4:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80004cd8:	00251513          	slli	a0,a0,0x2
    80004cdc:	ffffd097          	auipc	ra,0xffffd
    80004ce0:	f4c080e7          	jalr	-180(ra) # 80001c28 <_Z9mem_allocm>
    80004ce4:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80004ce8:	01000513          	li	a0,16
    80004cec:	fffff097          	auipc	ra,0xfffff
    80004cf0:	a80080e7          	jalr	-1408(ra) # 8000376c <_Znwm>
    80004cf4:	00050993          	mv	s3,a0
    80004cf8:	00000593          	li	a1,0
    80004cfc:	fffff097          	auipc	ra,0xfffff
    80004d00:	cc4080e7          	jalr	-828(ra) # 800039c0 <_ZN9SemaphoreC1Ej>
    80004d04:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80004d08:	01000513          	li	a0,16
    80004d0c:	fffff097          	auipc	ra,0xfffff
    80004d10:	a60080e7          	jalr	-1440(ra) # 8000376c <_Znwm>
    80004d14:	00050993          	mv	s3,a0
    80004d18:	00090593          	mv	a1,s2
    80004d1c:	fffff097          	auipc	ra,0xfffff
    80004d20:	ca4080e7          	jalr	-860(ra) # 800039c0 <_ZN9SemaphoreC1Ej>
    80004d24:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80004d28:	01000513          	li	a0,16
    80004d2c:	fffff097          	auipc	ra,0xfffff
    80004d30:	a40080e7          	jalr	-1472(ra) # 8000376c <_Znwm>
    80004d34:	00050913          	mv	s2,a0
    80004d38:	00100593          	li	a1,1
    80004d3c:	fffff097          	auipc	ra,0xfffff
    80004d40:	c84080e7          	jalr	-892(ra) # 800039c0 <_ZN9SemaphoreC1Ej>
    80004d44:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80004d48:	01000513          	li	a0,16
    80004d4c:	fffff097          	auipc	ra,0xfffff
    80004d50:	a20080e7          	jalr	-1504(ra) # 8000376c <_Znwm>
    80004d54:	00050913          	mv	s2,a0
    80004d58:	00100593          	li	a1,1
    80004d5c:	fffff097          	auipc	ra,0xfffff
    80004d60:	c64080e7          	jalr	-924(ra) # 800039c0 <_ZN9SemaphoreC1Ej>
    80004d64:	0324b823          	sd	s2,48(s1)
}
    80004d68:	02813083          	ld	ra,40(sp)
    80004d6c:	02013403          	ld	s0,32(sp)
    80004d70:	01813483          	ld	s1,24(sp)
    80004d74:	01013903          	ld	s2,16(sp)
    80004d78:	00813983          	ld	s3,8(sp)
    80004d7c:	03010113          	addi	sp,sp,48
    80004d80:	00008067          	ret
    80004d84:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80004d88:	00098513          	mv	a0,s3
    80004d8c:	fffff097          	auipc	ra,0xfffff
    80004d90:	a08080e7          	jalr	-1528(ra) # 80003794 <_ZdlPv>
    80004d94:	00048513          	mv	a0,s1
    80004d98:	0000b097          	auipc	ra,0xb
    80004d9c:	9b0080e7          	jalr	-1616(ra) # 8000f748 <_Unwind_Resume>
    80004da0:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80004da4:	00098513          	mv	a0,s3
    80004da8:	fffff097          	auipc	ra,0xfffff
    80004dac:	9ec080e7          	jalr	-1556(ra) # 80003794 <_ZdlPv>
    80004db0:	00048513          	mv	a0,s1
    80004db4:	0000b097          	auipc	ra,0xb
    80004db8:	994080e7          	jalr	-1644(ra) # 8000f748 <_Unwind_Resume>
    80004dbc:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80004dc0:	00090513          	mv	a0,s2
    80004dc4:	fffff097          	auipc	ra,0xfffff
    80004dc8:	9d0080e7          	jalr	-1584(ra) # 80003794 <_ZdlPv>
    80004dcc:	00048513          	mv	a0,s1
    80004dd0:	0000b097          	auipc	ra,0xb
    80004dd4:	978080e7          	jalr	-1672(ra) # 8000f748 <_Unwind_Resume>
    80004dd8:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80004ddc:	00090513          	mv	a0,s2
    80004de0:	fffff097          	auipc	ra,0xfffff
    80004de4:	9b4080e7          	jalr	-1612(ra) # 80003794 <_ZdlPv>
    80004de8:	00048513          	mv	a0,s1
    80004dec:	0000b097          	auipc	ra,0xb
    80004df0:	95c080e7          	jalr	-1700(ra) # 8000f748 <_Unwind_Resume>

0000000080004df4 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80004df4:	fe010113          	addi	sp,sp,-32
    80004df8:	00113c23          	sd	ra,24(sp)
    80004dfc:	00813823          	sd	s0,16(sp)
    80004e00:	00913423          	sd	s1,8(sp)
    80004e04:	01213023          	sd	s2,0(sp)
    80004e08:	02010413          	addi	s0,sp,32
    80004e0c:	00050493          	mv	s1,a0
    80004e10:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80004e14:	01853503          	ld	a0,24(a0)
    80004e18:	fffff097          	auipc	ra,0xfffff
    80004e1c:	b70080e7          	jalr	-1168(ra) # 80003988 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80004e20:	0304b503          	ld	a0,48(s1)
    80004e24:	fffff097          	auipc	ra,0xfffff
    80004e28:	b64080e7          	jalr	-1180(ra) # 80003988 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80004e2c:	0084b783          	ld	a5,8(s1)
    80004e30:	0144a703          	lw	a4,20(s1)
    80004e34:	00271713          	slli	a4,a4,0x2
    80004e38:	00e787b3          	add	a5,a5,a4
    80004e3c:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80004e40:	0144a783          	lw	a5,20(s1)
    80004e44:	0017879b          	addiw	a5,a5,1
    80004e48:	0004a703          	lw	a4,0(s1)
    80004e4c:	02e7e7bb          	remw	a5,a5,a4
    80004e50:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80004e54:	0304b503          	ld	a0,48(s1)
    80004e58:	fffff097          	auipc	ra,0xfffff
    80004e5c:	bb4080e7          	jalr	-1100(ra) # 80003a0c <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80004e60:	0204b503          	ld	a0,32(s1)
    80004e64:	fffff097          	auipc	ra,0xfffff
    80004e68:	ba8080e7          	jalr	-1112(ra) # 80003a0c <_ZN9Semaphore6signalEv>

}
    80004e6c:	01813083          	ld	ra,24(sp)
    80004e70:	01013403          	ld	s0,16(sp)
    80004e74:	00813483          	ld	s1,8(sp)
    80004e78:	00013903          	ld	s2,0(sp)
    80004e7c:	02010113          	addi	sp,sp,32
    80004e80:	00008067          	ret

0000000080004e84 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80004e84:	fe010113          	addi	sp,sp,-32
    80004e88:	00113c23          	sd	ra,24(sp)
    80004e8c:	00813823          	sd	s0,16(sp)
    80004e90:	00913423          	sd	s1,8(sp)
    80004e94:	01213023          	sd	s2,0(sp)
    80004e98:	02010413          	addi	s0,sp,32
    80004e9c:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80004ea0:	02053503          	ld	a0,32(a0)
    80004ea4:	fffff097          	auipc	ra,0xfffff
    80004ea8:	ae4080e7          	jalr	-1308(ra) # 80003988 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80004eac:	0284b503          	ld	a0,40(s1)
    80004eb0:	fffff097          	auipc	ra,0xfffff
    80004eb4:	ad8080e7          	jalr	-1320(ra) # 80003988 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80004eb8:	0084b703          	ld	a4,8(s1)
    80004ebc:	0104a783          	lw	a5,16(s1)
    80004ec0:	00279693          	slli	a3,a5,0x2
    80004ec4:	00d70733          	add	a4,a4,a3
    80004ec8:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80004ecc:	0017879b          	addiw	a5,a5,1
    80004ed0:	0004a703          	lw	a4,0(s1)
    80004ed4:	02e7e7bb          	remw	a5,a5,a4
    80004ed8:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80004edc:	0284b503          	ld	a0,40(s1)
    80004ee0:	fffff097          	auipc	ra,0xfffff
    80004ee4:	b2c080e7          	jalr	-1236(ra) # 80003a0c <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80004ee8:	0184b503          	ld	a0,24(s1)
    80004eec:	fffff097          	auipc	ra,0xfffff
    80004ef0:	b20080e7          	jalr	-1248(ra) # 80003a0c <_ZN9Semaphore6signalEv>

    return ret;
}
    80004ef4:	00090513          	mv	a0,s2
    80004ef8:	01813083          	ld	ra,24(sp)
    80004efc:	01013403          	ld	s0,16(sp)
    80004f00:	00813483          	ld	s1,8(sp)
    80004f04:	00013903          	ld	s2,0(sp)
    80004f08:	02010113          	addi	sp,sp,32
    80004f0c:	00008067          	ret

0000000080004f10 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80004f10:	fe010113          	addi	sp,sp,-32
    80004f14:	00113c23          	sd	ra,24(sp)
    80004f18:	00813823          	sd	s0,16(sp)
    80004f1c:	00913423          	sd	s1,8(sp)
    80004f20:	01213023          	sd	s2,0(sp)
    80004f24:	02010413          	addi	s0,sp,32
    80004f28:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80004f2c:	02853503          	ld	a0,40(a0)
    80004f30:	fffff097          	auipc	ra,0xfffff
    80004f34:	a58080e7          	jalr	-1448(ra) # 80003988 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80004f38:	0304b503          	ld	a0,48(s1)
    80004f3c:	fffff097          	auipc	ra,0xfffff
    80004f40:	a4c080e7          	jalr	-1460(ra) # 80003988 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80004f44:	0144a783          	lw	a5,20(s1)
    80004f48:	0104a903          	lw	s2,16(s1)
    80004f4c:	0327ce63          	blt	a5,s2,80004f88 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80004f50:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80004f54:	0304b503          	ld	a0,48(s1)
    80004f58:	fffff097          	auipc	ra,0xfffff
    80004f5c:	ab4080e7          	jalr	-1356(ra) # 80003a0c <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80004f60:	0284b503          	ld	a0,40(s1)
    80004f64:	fffff097          	auipc	ra,0xfffff
    80004f68:	aa8080e7          	jalr	-1368(ra) # 80003a0c <_ZN9Semaphore6signalEv>

    return ret;
}
    80004f6c:	00090513          	mv	a0,s2
    80004f70:	01813083          	ld	ra,24(sp)
    80004f74:	01013403          	ld	s0,16(sp)
    80004f78:	00813483          	ld	s1,8(sp)
    80004f7c:	00013903          	ld	s2,0(sp)
    80004f80:	02010113          	addi	sp,sp,32
    80004f84:	00008067          	ret
        ret = cap - head + tail;
    80004f88:	0004a703          	lw	a4,0(s1)
    80004f8c:	4127093b          	subw	s2,a4,s2
    80004f90:	00f9093b          	addw	s2,s2,a5
    80004f94:	fc1ff06f          	j	80004f54 <_ZN9BufferCPP6getCntEv+0x44>

0000000080004f98 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80004f98:	fe010113          	addi	sp,sp,-32
    80004f9c:	00113c23          	sd	ra,24(sp)
    80004fa0:	00813823          	sd	s0,16(sp)
    80004fa4:	00913423          	sd	s1,8(sp)
    80004fa8:	02010413          	addi	s0,sp,32
    80004fac:	00050493          	mv	s1,a0
    Console::putc('\n');
    80004fb0:	00a00513          	li	a0,10
    80004fb4:	fffff097          	auipc	ra,0xfffff
    80004fb8:	ab8080e7          	jalr	-1352(ra) # 80003a6c <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80004fbc:	00003517          	auipc	a0,0x3
    80004fc0:	42450513          	addi	a0,a0,1060 # 800083e0 <CONSOLE_STATUS+0x3d0>
    80004fc4:	00000097          	auipc	ra,0x0
    80004fc8:	a30080e7          	jalr	-1488(ra) # 800049f4 <_Z11printStringPKc>
    while (getCnt()) {
    80004fcc:	00048513          	mv	a0,s1
    80004fd0:	00000097          	auipc	ra,0x0
    80004fd4:	f40080e7          	jalr	-192(ra) # 80004f10 <_ZN9BufferCPP6getCntEv>
    80004fd8:	02050c63          	beqz	a0,80005010 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80004fdc:	0084b783          	ld	a5,8(s1)
    80004fe0:	0104a703          	lw	a4,16(s1)
    80004fe4:	00271713          	slli	a4,a4,0x2
    80004fe8:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80004fec:	0007c503          	lbu	a0,0(a5)
    80004ff0:	fffff097          	auipc	ra,0xfffff
    80004ff4:	a7c080e7          	jalr	-1412(ra) # 80003a6c <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80004ff8:	0104a783          	lw	a5,16(s1)
    80004ffc:	0017879b          	addiw	a5,a5,1
    80005000:	0004a703          	lw	a4,0(s1)
    80005004:	02e7e7bb          	remw	a5,a5,a4
    80005008:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    8000500c:	fc1ff06f          	j	80004fcc <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80005010:	02100513          	li	a0,33
    80005014:	fffff097          	auipc	ra,0xfffff
    80005018:	a58080e7          	jalr	-1448(ra) # 80003a6c <_ZN7Console4putcEc>
    Console::putc('\n');
    8000501c:	00a00513          	li	a0,10
    80005020:	fffff097          	auipc	ra,0xfffff
    80005024:	a4c080e7          	jalr	-1460(ra) # 80003a6c <_ZN7Console4putcEc>
    mem_free(buffer);
    80005028:	0084b503          	ld	a0,8(s1)
    8000502c:	ffffd097          	auipc	ra,0xffffd
    80005030:	c2c080e7          	jalr	-980(ra) # 80001c58 <_Z8mem_freePv>
    delete itemAvailable;
    80005034:	0204b503          	ld	a0,32(s1)
    80005038:	00050863          	beqz	a0,80005048 <_ZN9BufferCPPD1Ev+0xb0>
    8000503c:	00053783          	ld	a5,0(a0)
    80005040:	0087b783          	ld	a5,8(a5)
    80005044:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005048:	0184b503          	ld	a0,24(s1)
    8000504c:	00050863          	beqz	a0,8000505c <_ZN9BufferCPPD1Ev+0xc4>
    80005050:	00053783          	ld	a5,0(a0)
    80005054:	0087b783          	ld	a5,8(a5)
    80005058:	000780e7          	jalr	a5
    delete mutexTail;
    8000505c:	0304b503          	ld	a0,48(s1)
    80005060:	00050863          	beqz	a0,80005070 <_ZN9BufferCPPD1Ev+0xd8>
    80005064:	00053783          	ld	a5,0(a0)
    80005068:	0087b783          	ld	a5,8(a5)
    8000506c:	000780e7          	jalr	a5
    delete mutexHead;
    80005070:	0284b503          	ld	a0,40(s1)
    80005074:	00050863          	beqz	a0,80005084 <_ZN9BufferCPPD1Ev+0xec>
    80005078:	00053783          	ld	a5,0(a0)
    8000507c:	0087b783          	ld	a5,8(a5)
    80005080:	000780e7          	jalr	a5
}
    80005084:	01813083          	ld	ra,24(sp)
    80005088:	01013403          	ld	s0,16(sp)
    8000508c:	00813483          	ld	s1,8(sp)
    80005090:	02010113          	addi	sp,sp,32
    80005094:	00008067          	ret

0000000080005098 <_Z11workerBodyAPv>:
    if (n == 0 || n == 1) { return n; }
    if (n % 10 == 0) { thread_dispatch(); }
    return fibonacci(n - 1) + fibonacci(n - 2);
}

void workerBodyA(void* arg) {
    80005098:	fe010113          	addi	sp,sp,-32
    8000509c:	00113c23          	sd	ra,24(sp)
    800050a0:	00813823          	sd	s0,16(sp)
    800050a4:	00913423          	sd	s1,8(sp)
    800050a8:	01213023          	sd	s2,0(sp)
    800050ac:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800050b0:	00000913          	li	s2,0
    800050b4:	0380006f          	j	800050ec <_Z11workerBodyAPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800050b8:	ffffd097          	auipc	ra,0xffffd
    800050bc:	c4c080e7          	jalr	-948(ra) # 80001d04 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800050c0:	00148493          	addi	s1,s1,1
    800050c4:	000027b7          	lui	a5,0x2
    800050c8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800050cc:	0097ee63          	bltu	a5,s1,800050e8 <_Z11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800050d0:	00000713          	li	a4,0
    800050d4:	000077b7          	lui	a5,0x7
    800050d8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800050dc:	fce7eee3          	bltu	a5,a4,800050b8 <_Z11workerBodyAPv+0x20>
    800050e0:	00170713          	addi	a4,a4,1
    800050e4:	ff1ff06f          	j	800050d4 <_Z11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800050e8:	00190913          	addi	s2,s2,1
    800050ec:	00900793          	li	a5,9
    800050f0:	0527e063          	bltu	a5,s2,80005130 <_Z11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800050f4:	00003517          	auipc	a0,0x3
    800050f8:	30450513          	addi	a0,a0,772 # 800083f8 <CONSOLE_STATUS+0x3e8>
    800050fc:	00000097          	auipc	ra,0x0
    80005100:	8f8080e7          	jalr	-1800(ra) # 800049f4 <_Z11printStringPKc>
    80005104:	00000613          	li	a2,0
    80005108:	00a00593          	li	a1,10
    8000510c:	0009051b          	sext.w	a0,s2
    80005110:	00000097          	auipc	ra,0x0
    80005114:	a7c080e7          	jalr	-1412(ra) # 80004b8c <_Z8printIntiii>
    80005118:	00003517          	auipc	a0,0x3
    8000511c:	4e850513          	addi	a0,a0,1256 # 80008600 <CONSOLE_STATUS+0x5f0>
    80005120:	00000097          	auipc	ra,0x0
    80005124:	8d4080e7          	jalr	-1836(ra) # 800049f4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005128:	00000493          	li	s1,0
    8000512c:	f99ff06f          	j	800050c4 <_Z11workerBodyAPv+0x2c>
        }
    }
    printString("A finished!\n");
    80005130:	00003517          	auipc	a0,0x3
    80005134:	2d050513          	addi	a0,a0,720 # 80008400 <CONSOLE_STATUS+0x3f0>
    80005138:	00000097          	auipc	ra,0x0
    8000513c:	8bc080e7          	jalr	-1860(ra) # 800049f4 <_Z11printStringPKc>
    finishedA = true;
    80005140:	00100793          	li	a5,1
    80005144:	00009717          	auipc	a4,0x9
    80005148:	52f70a23          	sb	a5,1332(a4) # 8000e678 <finishedA>
}
    8000514c:	01813083          	ld	ra,24(sp)
    80005150:	01013403          	ld	s0,16(sp)
    80005154:	00813483          	ld	s1,8(sp)
    80005158:	00013903          	ld	s2,0(sp)
    8000515c:	02010113          	addi	sp,sp,32
    80005160:	00008067          	ret

0000000080005164 <_Z11workerBodyBPv>:

void workerBodyB(void* arg) {
    80005164:	fe010113          	addi	sp,sp,-32
    80005168:	00113c23          	sd	ra,24(sp)
    8000516c:	00813823          	sd	s0,16(sp)
    80005170:	00913423          	sd	s1,8(sp)
    80005174:	01213023          	sd	s2,0(sp)
    80005178:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    8000517c:	00000913          	li	s2,0
    80005180:	0380006f          	j	800051b8 <_Z11workerBodyBPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80005184:	ffffd097          	auipc	ra,0xffffd
    80005188:	b80080e7          	jalr	-1152(ra) # 80001d04 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000518c:	00148493          	addi	s1,s1,1
    80005190:	000027b7          	lui	a5,0x2
    80005194:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005198:	0097ee63          	bltu	a5,s1,800051b4 <_Z11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000519c:	00000713          	li	a4,0
    800051a0:	000077b7          	lui	a5,0x7
    800051a4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800051a8:	fce7eee3          	bltu	a5,a4,80005184 <_Z11workerBodyBPv+0x20>
    800051ac:	00170713          	addi	a4,a4,1
    800051b0:	ff1ff06f          	j	800051a0 <_Z11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800051b4:	00190913          	addi	s2,s2,1
    800051b8:	00f00793          	li	a5,15
    800051bc:	0527e063          	bltu	a5,s2,800051fc <_Z11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800051c0:	00003517          	auipc	a0,0x3
    800051c4:	25050513          	addi	a0,a0,592 # 80008410 <CONSOLE_STATUS+0x400>
    800051c8:	00000097          	auipc	ra,0x0
    800051cc:	82c080e7          	jalr	-2004(ra) # 800049f4 <_Z11printStringPKc>
    800051d0:	00000613          	li	a2,0
    800051d4:	00a00593          	li	a1,10
    800051d8:	0009051b          	sext.w	a0,s2
    800051dc:	00000097          	auipc	ra,0x0
    800051e0:	9b0080e7          	jalr	-1616(ra) # 80004b8c <_Z8printIntiii>
    800051e4:	00003517          	auipc	a0,0x3
    800051e8:	41c50513          	addi	a0,a0,1052 # 80008600 <CONSOLE_STATUS+0x5f0>
    800051ec:	00000097          	auipc	ra,0x0
    800051f0:	808080e7          	jalr	-2040(ra) # 800049f4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800051f4:	00000493          	li	s1,0
    800051f8:	f99ff06f          	j	80005190 <_Z11workerBodyBPv+0x2c>
        }
    }
    thread_dispatch();
    800051fc:	ffffd097          	auipc	ra,0xffffd
    80005200:	b08080e7          	jalr	-1272(ra) # 80001d04 <_Z15thread_dispatchv>
    printString("B finished!\n");
    80005204:	00003517          	auipc	a0,0x3
    80005208:	21450513          	addi	a0,a0,532 # 80008418 <CONSOLE_STATUS+0x408>
    8000520c:	fffff097          	auipc	ra,0xfffff
    80005210:	7e8080e7          	jalr	2024(ra) # 800049f4 <_Z11printStringPKc>
    finishedB = true;
    80005214:	00100793          	li	a5,1
    80005218:	00009717          	auipc	a4,0x9
    8000521c:	46f700a3          	sb	a5,1121(a4) # 8000e679 <finishedB>
}
    80005220:	01813083          	ld	ra,24(sp)
    80005224:	01013403          	ld	s0,16(sp)
    80005228:	00813483          	ld	s1,8(sp)
    8000522c:	00013903          	ld	s2,0(sp)
    80005230:	02010113          	addi	sp,sp,32
    80005234:	00008067          	ret

0000000080005238 <_Z9fibonaccim>:
uint64 fibonacci(uint64 n) {
    80005238:	fe010113          	addi	sp,sp,-32
    8000523c:	00113c23          	sd	ra,24(sp)
    80005240:	00813823          	sd	s0,16(sp)
    80005244:	00913423          	sd	s1,8(sp)
    80005248:	01213023          	sd	s2,0(sp)
    8000524c:	02010413          	addi	s0,sp,32
    80005250:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80005254:	00100793          	li	a5,1
    80005258:	02a7f863          	bgeu	a5,a0,80005288 <_Z9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    8000525c:	00a00793          	li	a5,10
    80005260:	02f577b3          	remu	a5,a0,a5
    80005264:	02078e63          	beqz	a5,800052a0 <_Z9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80005268:	fff48513          	addi	a0,s1,-1
    8000526c:	00000097          	auipc	ra,0x0
    80005270:	fcc080e7          	jalr	-52(ra) # 80005238 <_Z9fibonaccim>
    80005274:	00050913          	mv	s2,a0
    80005278:	ffe48513          	addi	a0,s1,-2
    8000527c:	00000097          	auipc	ra,0x0
    80005280:	fbc080e7          	jalr	-68(ra) # 80005238 <_Z9fibonaccim>
    80005284:	00a90533          	add	a0,s2,a0
}
    80005288:	01813083          	ld	ra,24(sp)
    8000528c:	01013403          	ld	s0,16(sp)
    80005290:	00813483          	ld	s1,8(sp)
    80005294:	00013903          	ld	s2,0(sp)
    80005298:	02010113          	addi	sp,sp,32
    8000529c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800052a0:	ffffd097          	auipc	ra,0xffffd
    800052a4:	a64080e7          	jalr	-1436(ra) # 80001d04 <_Z15thread_dispatchv>
    800052a8:	fc1ff06f          	j	80005268 <_Z9fibonaccim+0x30>

00000000800052ac <_Z11workerBodyCPv>:

void workerBodyC(void* arg) {
    800052ac:	fe010113          	addi	sp,sp,-32
    800052b0:	00113c23          	sd	ra,24(sp)
    800052b4:	00813823          	sd	s0,16(sp)
    800052b8:	00913423          	sd	s1,8(sp)
    800052bc:	01213023          	sd	s2,0(sp)
    800052c0:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800052c4:	00000493          	li	s1,0
    800052c8:	0400006f          	j	80005308 <_Z11workerBodyCPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800052cc:	00003517          	auipc	a0,0x3
    800052d0:	15c50513          	addi	a0,a0,348 # 80008428 <CONSOLE_STATUS+0x418>
    800052d4:	fffff097          	auipc	ra,0xfffff
    800052d8:	720080e7          	jalr	1824(ra) # 800049f4 <_Z11printStringPKc>
    800052dc:	00000613          	li	a2,0
    800052e0:	00a00593          	li	a1,10
    800052e4:	00048513          	mv	a0,s1
    800052e8:	00000097          	auipc	ra,0x0
    800052ec:	8a4080e7          	jalr	-1884(ra) # 80004b8c <_Z8printIntiii>
    800052f0:	00003517          	auipc	a0,0x3
    800052f4:	31050513          	addi	a0,a0,784 # 80008600 <CONSOLE_STATUS+0x5f0>
    800052f8:	fffff097          	auipc	ra,0xfffff
    800052fc:	6fc080e7          	jalr	1788(ra) # 800049f4 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005300:	0014849b          	addiw	s1,s1,1
    80005304:	0ff4f493          	andi	s1,s1,255
    80005308:	00200793          	li	a5,2
    8000530c:	fc97f0e3          	bgeu	a5,s1,800052cc <_Z11workerBodyCPv+0x20>
    }

    printString("C: dispatch\n");
    80005310:	00003517          	auipc	a0,0x3
    80005314:	12050513          	addi	a0,a0,288 # 80008430 <CONSOLE_STATUS+0x420>
    80005318:	fffff097          	auipc	ra,0xfffff
    8000531c:	6dc080e7          	jalr	1756(ra) # 800049f4 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005320:	00700313          	li	t1,7
    thread_dispatch();
    80005324:	ffffd097          	auipc	ra,0xffffd
    80005328:	9e0080e7          	jalr	-1568(ra) # 80001d04 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000532c:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80005330:	00003517          	auipc	a0,0x3
    80005334:	11050513          	addi	a0,a0,272 # 80008440 <CONSOLE_STATUS+0x430>
    80005338:	fffff097          	auipc	ra,0xfffff
    8000533c:	6bc080e7          	jalr	1724(ra) # 800049f4 <_Z11printStringPKc>
    80005340:	00000613          	li	a2,0
    80005344:	00a00593          	li	a1,10
    80005348:	0009051b          	sext.w	a0,s2
    8000534c:	00000097          	auipc	ra,0x0
    80005350:	840080e7          	jalr	-1984(ra) # 80004b8c <_Z8printIntiii>
    80005354:	00003517          	auipc	a0,0x3
    80005358:	2ac50513          	addi	a0,a0,684 # 80008600 <CONSOLE_STATUS+0x5f0>
    8000535c:	fffff097          	auipc	ra,0xfffff
    80005360:	698080e7          	jalr	1688(ra) # 800049f4 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80005364:	00c00513          	li	a0,12
    80005368:	00000097          	auipc	ra,0x0
    8000536c:	ed0080e7          	jalr	-304(ra) # 80005238 <_Z9fibonaccim>
    80005370:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005374:	00003517          	auipc	a0,0x3
    80005378:	0d450513          	addi	a0,a0,212 # 80008448 <CONSOLE_STATUS+0x438>
    8000537c:	fffff097          	auipc	ra,0xfffff
    80005380:	678080e7          	jalr	1656(ra) # 800049f4 <_Z11printStringPKc>
    80005384:	00000613          	li	a2,0
    80005388:	00a00593          	li	a1,10
    8000538c:	0009051b          	sext.w	a0,s2
    80005390:	fffff097          	auipc	ra,0xfffff
    80005394:	7fc080e7          	jalr	2044(ra) # 80004b8c <_Z8printIntiii>
    80005398:	00003517          	auipc	a0,0x3
    8000539c:	26850513          	addi	a0,a0,616 # 80008600 <CONSOLE_STATUS+0x5f0>
    800053a0:	fffff097          	auipc	ra,0xfffff
    800053a4:	654080e7          	jalr	1620(ra) # 800049f4 <_Z11printStringPKc>
    800053a8:	0400006f          	j	800053e8 <_Z11workerBodyCPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800053ac:	00003517          	auipc	a0,0x3
    800053b0:	07c50513          	addi	a0,a0,124 # 80008428 <CONSOLE_STATUS+0x418>
    800053b4:	fffff097          	auipc	ra,0xfffff
    800053b8:	640080e7          	jalr	1600(ra) # 800049f4 <_Z11printStringPKc>
    800053bc:	00000613          	li	a2,0
    800053c0:	00a00593          	li	a1,10
    800053c4:	00048513          	mv	a0,s1
    800053c8:	fffff097          	auipc	ra,0xfffff
    800053cc:	7c4080e7          	jalr	1988(ra) # 80004b8c <_Z8printIntiii>
    800053d0:	00003517          	auipc	a0,0x3
    800053d4:	23050513          	addi	a0,a0,560 # 80008600 <CONSOLE_STATUS+0x5f0>
    800053d8:	fffff097          	auipc	ra,0xfffff
    800053dc:	61c080e7          	jalr	1564(ra) # 800049f4 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800053e0:	0014849b          	addiw	s1,s1,1
    800053e4:	0ff4f493          	andi	s1,s1,255
    800053e8:	00500793          	li	a5,5
    800053ec:	fc97f0e3          	bgeu	a5,s1,800053ac <_Z11workerBodyCPv+0x100>
    }

    thread_dispatch();
    800053f0:	ffffd097          	auipc	ra,0xffffd
    800053f4:	914080e7          	jalr	-1772(ra) # 80001d04 <_Z15thread_dispatchv>
    printString("A finished!\n");
    800053f8:	00003517          	auipc	a0,0x3
    800053fc:	00850513          	addi	a0,a0,8 # 80008400 <CONSOLE_STATUS+0x3f0>
    80005400:	fffff097          	auipc	ra,0xfffff
    80005404:	5f4080e7          	jalr	1524(ra) # 800049f4 <_Z11printStringPKc>
    finishedC = true;
    80005408:	00100793          	li	a5,1
    8000540c:	00009717          	auipc	a4,0x9
    80005410:	26f70723          	sb	a5,622(a4) # 8000e67a <finishedC>
}
    80005414:	01813083          	ld	ra,24(sp)
    80005418:	01013403          	ld	s0,16(sp)
    8000541c:	00813483          	ld	s1,8(sp)
    80005420:	00013903          	ld	s2,0(sp)
    80005424:	02010113          	addi	sp,sp,32
    80005428:	00008067          	ret

000000008000542c <_Z11workerBodyDPv>:

void workerBodyD(void* arg) {
    8000542c:	fe010113          	addi	sp,sp,-32
    80005430:	00113c23          	sd	ra,24(sp)
    80005434:	00813823          	sd	s0,16(sp)
    80005438:	00913423          	sd	s1,8(sp)
    8000543c:	01213023          	sd	s2,0(sp)
    80005440:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005444:	00a00493          	li	s1,10
    80005448:	0400006f          	j	80005488 <_Z11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000544c:	00003517          	auipc	a0,0x3
    80005450:	00c50513          	addi	a0,a0,12 # 80008458 <CONSOLE_STATUS+0x448>
    80005454:	fffff097          	auipc	ra,0xfffff
    80005458:	5a0080e7          	jalr	1440(ra) # 800049f4 <_Z11printStringPKc>
    8000545c:	00000613          	li	a2,0
    80005460:	00a00593          	li	a1,10
    80005464:	00048513          	mv	a0,s1
    80005468:	fffff097          	auipc	ra,0xfffff
    8000546c:	724080e7          	jalr	1828(ra) # 80004b8c <_Z8printIntiii>
    80005470:	00003517          	auipc	a0,0x3
    80005474:	19050513          	addi	a0,a0,400 # 80008600 <CONSOLE_STATUS+0x5f0>
    80005478:	fffff097          	auipc	ra,0xfffff
    8000547c:	57c080e7          	jalr	1404(ra) # 800049f4 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005480:	0014849b          	addiw	s1,s1,1
    80005484:	0ff4f493          	andi	s1,s1,255
    80005488:	00c00793          	li	a5,12
    8000548c:	fc97f0e3          	bgeu	a5,s1,8000544c <_Z11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005490:	00003517          	auipc	a0,0x3
    80005494:	fd050513          	addi	a0,a0,-48 # 80008460 <CONSOLE_STATUS+0x450>
    80005498:	fffff097          	auipc	ra,0xfffff
    8000549c:	55c080e7          	jalr	1372(ra) # 800049f4 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800054a0:	00500313          	li	t1,5
    thread_dispatch();
    800054a4:	ffffd097          	auipc	ra,0xffffd
    800054a8:	860080e7          	jalr	-1952(ra) # 80001d04 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800054ac:	01000513          	li	a0,16
    800054b0:	00000097          	auipc	ra,0x0
    800054b4:	d88080e7          	jalr	-632(ra) # 80005238 <_Z9fibonaccim>
    800054b8:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800054bc:	00003517          	auipc	a0,0x3
    800054c0:	fb450513          	addi	a0,a0,-76 # 80008470 <CONSOLE_STATUS+0x460>
    800054c4:	fffff097          	auipc	ra,0xfffff
    800054c8:	530080e7          	jalr	1328(ra) # 800049f4 <_Z11printStringPKc>
    800054cc:	00000613          	li	a2,0
    800054d0:	00a00593          	li	a1,10
    800054d4:	0009051b          	sext.w	a0,s2
    800054d8:	fffff097          	auipc	ra,0xfffff
    800054dc:	6b4080e7          	jalr	1716(ra) # 80004b8c <_Z8printIntiii>
    800054e0:	00003517          	auipc	a0,0x3
    800054e4:	12050513          	addi	a0,a0,288 # 80008600 <CONSOLE_STATUS+0x5f0>
    800054e8:	fffff097          	auipc	ra,0xfffff
    800054ec:	50c080e7          	jalr	1292(ra) # 800049f4 <_Z11printStringPKc>
    800054f0:	0400006f          	j	80005530 <_Z11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800054f4:	00003517          	auipc	a0,0x3
    800054f8:	f6450513          	addi	a0,a0,-156 # 80008458 <CONSOLE_STATUS+0x448>
    800054fc:	fffff097          	auipc	ra,0xfffff
    80005500:	4f8080e7          	jalr	1272(ra) # 800049f4 <_Z11printStringPKc>
    80005504:	00000613          	li	a2,0
    80005508:	00a00593          	li	a1,10
    8000550c:	00048513          	mv	a0,s1
    80005510:	fffff097          	auipc	ra,0xfffff
    80005514:	67c080e7          	jalr	1660(ra) # 80004b8c <_Z8printIntiii>
    80005518:	00003517          	auipc	a0,0x3
    8000551c:	0e850513          	addi	a0,a0,232 # 80008600 <CONSOLE_STATUS+0x5f0>
    80005520:	fffff097          	auipc	ra,0xfffff
    80005524:	4d4080e7          	jalr	1236(ra) # 800049f4 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005528:	0014849b          	addiw	s1,s1,1
    8000552c:	0ff4f493          	andi	s1,s1,255
    80005530:	00f00793          	li	a5,15
    80005534:	fc97f0e3          	bgeu	a5,s1,800054f4 <_Z11workerBodyDPv+0xc8>
    }

    thread_dispatch();
    80005538:	ffffc097          	auipc	ra,0xffffc
    8000553c:	7cc080e7          	jalr	1996(ra) # 80001d04 <_Z15thread_dispatchv>
    printString("D finished!\n");
    80005540:	00003517          	auipc	a0,0x3
    80005544:	f4050513          	addi	a0,a0,-192 # 80008480 <CONSOLE_STATUS+0x470>
    80005548:	fffff097          	auipc	ra,0xfffff
    8000554c:	4ac080e7          	jalr	1196(ra) # 800049f4 <_Z11printStringPKc>
    finishedD = true;
    80005550:	00100793          	li	a5,1
    80005554:	00009717          	auipc	a4,0x9
    80005558:	12f703a3          	sb	a5,295(a4) # 8000e67b <finishedD>
}
    8000555c:	01813083          	ld	ra,24(sp)
    80005560:	01013403          	ld	s0,16(sp)
    80005564:	00813483          	ld	s1,8(sp)
    80005568:	00013903          	ld	s2,0(sp)
    8000556c:	02010113          	addi	sp,sp,32
    80005570:	00008067          	ret

0000000080005574 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80005574:	fc010113          	addi	sp,sp,-64
    80005578:	02113c23          	sd	ra,56(sp)
    8000557c:	02813823          	sd	s0,48(sp)
    80005580:	02913423          	sd	s1,40(sp)
    80005584:	04010413          	addi	s0,sp,64
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005588:	00000613          	li	a2,0
    8000558c:	00000597          	auipc	a1,0x0
    80005590:	b0c58593          	addi	a1,a1,-1268 # 80005098 <_Z11workerBodyAPv>
    80005594:	fc040513          	addi	a0,s0,-64
    80005598:	ffffc097          	auipc	ra,0xffffc
    8000559c:	6ec080e7          	jalr	1772(ra) # 80001c84 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    800055a0:	00003517          	auipc	a0,0x3
    800055a4:	ef050513          	addi	a0,a0,-272 # 80008490 <CONSOLE_STATUS+0x480>
    800055a8:	fffff097          	auipc	ra,0xfffff
    800055ac:	44c080e7          	jalr	1100(ra) # 800049f4 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800055b0:	00000613          	li	a2,0
    800055b4:	00000597          	auipc	a1,0x0
    800055b8:	bb058593          	addi	a1,a1,-1104 # 80005164 <_Z11workerBodyBPv>
    800055bc:	fc840513          	addi	a0,s0,-56
    800055c0:	ffffc097          	auipc	ra,0xffffc
    800055c4:	6c4080e7          	jalr	1732(ra) # 80001c84 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    800055c8:	00003517          	auipc	a0,0x3
    800055cc:	ee050513          	addi	a0,a0,-288 # 800084a8 <CONSOLE_STATUS+0x498>
    800055d0:	fffff097          	auipc	ra,0xfffff
    800055d4:	424080e7          	jalr	1060(ra) # 800049f4 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800055d8:	00000613          	li	a2,0
    800055dc:	00000597          	auipc	a1,0x0
    800055e0:	cd058593          	addi	a1,a1,-816 # 800052ac <_Z11workerBodyCPv>
    800055e4:	fd040513          	addi	a0,s0,-48
    800055e8:	ffffc097          	auipc	ra,0xffffc
    800055ec:	69c080e7          	jalr	1692(ra) # 80001c84 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    800055f0:	00003517          	auipc	a0,0x3
    800055f4:	ed050513          	addi	a0,a0,-304 # 800084c0 <CONSOLE_STATUS+0x4b0>
    800055f8:	fffff097          	auipc	ra,0xfffff
    800055fc:	3fc080e7          	jalr	1020(ra) # 800049f4 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005600:	00000613          	li	a2,0
    80005604:	00000597          	auipc	a1,0x0
    80005608:	e2858593          	addi	a1,a1,-472 # 8000542c <_Z11workerBodyDPv>
    8000560c:	fd840513          	addi	a0,s0,-40
    80005610:	ffffc097          	auipc	ra,0xffffc
    80005614:	674080e7          	jalr	1652(ra) # 80001c84 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    80005618:	00003517          	auipc	a0,0x3
    8000561c:	ec050513          	addi	a0,a0,-320 # 800084d8 <CONSOLE_STATUS+0x4c8>
    80005620:	fffff097          	auipc	ra,0xfffff
    80005624:	3d4080e7          	jalr	980(ra) # 800049f4 <_Z11printStringPKc>
    80005628:	00c0006f          	j	80005634 <_Z18Threads_C_API_testv+0xc0>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    8000562c:	ffffc097          	auipc	ra,0xffffc
    80005630:	6d8080e7          	jalr	1752(ra) # 80001d04 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005634:	00009797          	auipc	a5,0x9
    80005638:	0447c783          	lbu	a5,68(a5) # 8000e678 <finishedA>
    8000563c:	fe0788e3          	beqz	a5,8000562c <_Z18Threads_C_API_testv+0xb8>
    80005640:	00009797          	auipc	a5,0x9
    80005644:	0397c783          	lbu	a5,57(a5) # 8000e679 <finishedB>
    80005648:	fe0782e3          	beqz	a5,8000562c <_Z18Threads_C_API_testv+0xb8>
    8000564c:	00009797          	auipc	a5,0x9
    80005650:	02e7c783          	lbu	a5,46(a5) # 8000e67a <finishedC>
    80005654:	fc078ce3          	beqz	a5,8000562c <_Z18Threads_C_API_testv+0xb8>
    80005658:	00009797          	auipc	a5,0x9
    8000565c:	0237c783          	lbu	a5,35(a5) # 8000e67b <finishedD>
    80005660:	fc0786e3          	beqz	a5,8000562c <_Z18Threads_C_API_testv+0xb8>
    }

    for (auto &thread: threads) { delete thread; }
    80005664:	fc040493          	addi	s1,s0,-64
    80005668:	0080006f          	j	80005670 <_Z18Threads_C_API_testv+0xfc>
    8000566c:	00848493          	addi	s1,s1,8
    80005670:	fe040793          	addi	a5,s0,-32
    80005674:	00f48c63          	beq	s1,a5,8000568c <_Z18Threads_C_API_testv+0x118>
    80005678:	0004b503          	ld	a0,0(s1)
    8000567c:	fe0508e3          	beqz	a0,8000566c <_Z18Threads_C_API_testv+0xf8>
    80005680:	ffffd097          	auipc	ra,0xffffd
    80005684:	900080e7          	jalr	-1792(ra) # 80001f80 <_ZN7_threaddlEPv>
    80005688:	fe5ff06f          	j	8000566c <_Z18Threads_C_API_testv+0xf8>
}
    8000568c:	03813083          	ld	ra,56(sp)
    80005690:	03013403          	ld	s0,48(sp)
    80005694:	02813483          	ld	s1,40(sp)
    80005698:	04010113          	addi	sp,sp,64
    8000569c:	00008067          	ret

00000000800056a0 <_Z8userMainv>:

//#include "ThreadSleep_C_API_test.hpp" // thread_sleep test C API
//#include "ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta

void userMain()
{
    800056a0:	ff010113          	addi	sp,sp,-16
    800056a4:	00113423          	sd	ra,8(sp)
    800056a8:	00813023          	sd	s0,0(sp)
    800056ac:	01010413          	addi	s0,sp,16
    //__asm__ volatile("csrr a0, sstatus"); // test for changing privilege

    Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
    800056b0:	00000097          	auipc	ra,0x0
    800056b4:	ec4080e7          	jalr	-316(ra) # 80005574 <_Z18Threads_C_API_testv>
    //producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    //testSleeping(); // thread_sleep test C API
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega
    800056b8:	00813083          	ld	ra,8(sp)
    800056bc:	00013403          	ld	s0,0(sp)
    800056c0:	01010113          	addi	sp,sp,16
    800056c4:	00008067          	ret

00000000800056c8 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800056c8:	fe010113          	addi	sp,sp,-32
    800056cc:	00113c23          	sd	ra,24(sp)
    800056d0:	00813823          	sd	s0,16(sp)
    800056d4:	00913423          	sd	s1,8(sp)
    800056d8:	01213023          	sd	s2,0(sp)
    800056dc:	02010413          	addi	s0,sp,32
    800056e0:	00050493          	mv	s1,a0
    800056e4:	00058913          	mv	s2,a1
    800056e8:	0015879b          	addiw	a5,a1,1
    800056ec:	0007851b          	sext.w	a0,a5
    800056f0:	00f4a023          	sw	a5,0(s1)
    800056f4:	0004a823          	sw	zero,16(s1)
    800056f8:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800056fc:	00251513          	slli	a0,a0,0x2
    80005700:	ffffc097          	auipc	ra,0xffffc
    80005704:	528080e7          	jalr	1320(ra) # 80001c28 <_Z9mem_allocm>
    80005708:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    8000570c:	00000593          	li	a1,0
    80005710:	02048513          	addi	a0,s1,32
    80005714:	ffffc097          	auipc	ra,0xffffc
    80005718:	638080e7          	jalr	1592(ra) # 80001d4c <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    8000571c:	00090593          	mv	a1,s2
    80005720:	01848513          	addi	a0,s1,24
    80005724:	ffffc097          	auipc	ra,0xffffc
    80005728:	628080e7          	jalr	1576(ra) # 80001d4c <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    8000572c:	00100593          	li	a1,1
    80005730:	02848513          	addi	a0,s1,40
    80005734:	ffffc097          	auipc	ra,0xffffc
    80005738:	618080e7          	jalr	1560(ra) # 80001d4c <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    8000573c:	00100593          	li	a1,1
    80005740:	03048513          	addi	a0,s1,48
    80005744:	ffffc097          	auipc	ra,0xffffc
    80005748:	608080e7          	jalr	1544(ra) # 80001d4c <_Z8sem_openPP4_semj>
}
    8000574c:	01813083          	ld	ra,24(sp)
    80005750:	01013403          	ld	s0,16(sp)
    80005754:	00813483          	ld	s1,8(sp)
    80005758:	00013903          	ld	s2,0(sp)
    8000575c:	02010113          	addi	sp,sp,32
    80005760:	00008067          	ret

0000000080005764 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80005764:	fe010113          	addi	sp,sp,-32
    80005768:	00113c23          	sd	ra,24(sp)
    8000576c:	00813823          	sd	s0,16(sp)
    80005770:	00913423          	sd	s1,8(sp)
    80005774:	01213023          	sd	s2,0(sp)
    80005778:	02010413          	addi	s0,sp,32
    8000577c:	00050493          	mv	s1,a0
    80005780:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80005784:	01853503          	ld	a0,24(a0)
    80005788:	ffffc097          	auipc	ra,0xffffc
    8000578c:	628080e7          	jalr	1576(ra) # 80001db0 <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    80005790:	0304b503          	ld	a0,48(s1)
    80005794:	ffffc097          	auipc	ra,0xffffc
    80005798:	61c080e7          	jalr	1564(ra) # 80001db0 <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    8000579c:	0084b783          	ld	a5,8(s1)
    800057a0:	0144a703          	lw	a4,20(s1)
    800057a4:	00271713          	slli	a4,a4,0x2
    800057a8:	00e787b3          	add	a5,a5,a4
    800057ac:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800057b0:	0144a783          	lw	a5,20(s1)
    800057b4:	0017879b          	addiw	a5,a5,1
    800057b8:	0004a703          	lw	a4,0(s1)
    800057bc:	02e7e7bb          	remw	a5,a5,a4
    800057c0:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    800057c4:	0304b503          	ld	a0,48(s1)
    800057c8:	ffffc097          	auipc	ra,0xffffc
    800057cc:	614080e7          	jalr	1556(ra) # 80001ddc <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    800057d0:	0204b503          	ld	a0,32(s1)
    800057d4:	ffffc097          	auipc	ra,0xffffc
    800057d8:	608080e7          	jalr	1544(ra) # 80001ddc <_Z10sem_signalP4_sem>

}
    800057dc:	01813083          	ld	ra,24(sp)
    800057e0:	01013403          	ld	s0,16(sp)
    800057e4:	00813483          	ld	s1,8(sp)
    800057e8:	00013903          	ld	s2,0(sp)
    800057ec:	02010113          	addi	sp,sp,32
    800057f0:	00008067          	ret

00000000800057f4 <_ZN6Buffer3getEv>:

int Buffer::get() {
    800057f4:	fe010113          	addi	sp,sp,-32
    800057f8:	00113c23          	sd	ra,24(sp)
    800057fc:	00813823          	sd	s0,16(sp)
    80005800:	00913423          	sd	s1,8(sp)
    80005804:	01213023          	sd	s2,0(sp)
    80005808:	02010413          	addi	s0,sp,32
    8000580c:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80005810:	02053503          	ld	a0,32(a0)
    80005814:	ffffc097          	auipc	ra,0xffffc
    80005818:	59c080e7          	jalr	1436(ra) # 80001db0 <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    8000581c:	0284b503          	ld	a0,40(s1)
    80005820:	ffffc097          	auipc	ra,0xffffc
    80005824:	590080e7          	jalr	1424(ra) # 80001db0 <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    80005828:	0084b703          	ld	a4,8(s1)
    8000582c:	0104a783          	lw	a5,16(s1)
    80005830:	00279693          	slli	a3,a5,0x2
    80005834:	00d70733          	add	a4,a4,a3
    80005838:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    8000583c:	0017879b          	addiw	a5,a5,1
    80005840:	0004a703          	lw	a4,0(s1)
    80005844:	02e7e7bb          	remw	a5,a5,a4
    80005848:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    8000584c:	0284b503          	ld	a0,40(s1)
    80005850:	ffffc097          	auipc	ra,0xffffc
    80005854:	58c080e7          	jalr	1420(ra) # 80001ddc <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    80005858:	0184b503          	ld	a0,24(s1)
    8000585c:	ffffc097          	auipc	ra,0xffffc
    80005860:	580080e7          	jalr	1408(ra) # 80001ddc <_Z10sem_signalP4_sem>

    return ret;
}
    80005864:	00090513          	mv	a0,s2
    80005868:	01813083          	ld	ra,24(sp)
    8000586c:	01013403          	ld	s0,16(sp)
    80005870:	00813483          	ld	s1,8(sp)
    80005874:	00013903          	ld	s2,0(sp)
    80005878:	02010113          	addi	sp,sp,32
    8000587c:	00008067          	ret

0000000080005880 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80005880:	fe010113          	addi	sp,sp,-32
    80005884:	00113c23          	sd	ra,24(sp)
    80005888:	00813823          	sd	s0,16(sp)
    8000588c:	00913423          	sd	s1,8(sp)
    80005890:	01213023          	sd	s2,0(sp)
    80005894:	02010413          	addi	s0,sp,32
    80005898:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    8000589c:	02853503          	ld	a0,40(a0)
    800058a0:	ffffc097          	auipc	ra,0xffffc
    800058a4:	510080e7          	jalr	1296(ra) # 80001db0 <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    800058a8:	0304b503          	ld	a0,48(s1)
    800058ac:	ffffc097          	auipc	ra,0xffffc
    800058b0:	504080e7          	jalr	1284(ra) # 80001db0 <_Z8sem_waitP4_sem>

    if (tail >= head) {
    800058b4:	0144a783          	lw	a5,20(s1)
    800058b8:	0104a903          	lw	s2,16(s1)
    800058bc:	0327ce63          	blt	a5,s2,800058f8 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    800058c0:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    800058c4:	0304b503          	ld	a0,48(s1)
    800058c8:	ffffc097          	auipc	ra,0xffffc
    800058cc:	514080e7          	jalr	1300(ra) # 80001ddc <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    800058d0:	0284b503          	ld	a0,40(s1)
    800058d4:	ffffc097          	auipc	ra,0xffffc
    800058d8:	508080e7          	jalr	1288(ra) # 80001ddc <_Z10sem_signalP4_sem>

    return ret;
    800058dc:	00090513          	mv	a0,s2
    800058e0:	01813083          	ld	ra,24(sp)
    800058e4:	01013403          	ld	s0,16(sp)
    800058e8:	00813483          	ld	s1,8(sp)
    800058ec:	00013903          	ld	s2,0(sp)
    800058f0:	02010113          	addi	sp,sp,32
    800058f4:	00008067          	ret
        ret = cap - head + tail;
    800058f8:	0004a703          	lw	a4,0(s1)
    800058fc:	4127093b          	subw	s2,a4,s2
    80005900:	00f9093b          	addw	s2,s2,a5
    80005904:	fc1ff06f          	j	800058c4 <_ZN6Buffer6getCntEv+0x44>

0000000080005908 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80005908:	fe010113          	addi	sp,sp,-32
    8000590c:	00113c23          	sd	ra,24(sp)
    80005910:	00813823          	sd	s0,16(sp)
    80005914:	00913423          	sd	s1,8(sp)
    80005918:	02010413          	addi	s0,sp,32
    8000591c:	00050493          	mv	s1,a0
    putc('\n');
    80005920:	00a00513          	li	a0,10
    80005924:	ffffc097          	auipc	ra,0xffffc
    80005928:	5e4080e7          	jalr	1508(ra) # 80001f08 <_Z4putcc>
    printString("Buffer deleted!\n");
    8000592c:	00003517          	auipc	a0,0x3
    80005930:	ab450513          	addi	a0,a0,-1356 # 800083e0 <CONSOLE_STATUS+0x3d0>
    80005934:	fffff097          	auipc	ra,0xfffff
    80005938:	0c0080e7          	jalr	192(ra) # 800049f4 <_Z11printStringPKc>
    while (getCnt() > 0) {
    8000593c:	00048513          	mv	a0,s1
    80005940:	00000097          	auipc	ra,0x0
    80005944:	f40080e7          	jalr	-192(ra) # 80005880 <_ZN6Buffer6getCntEv>
    80005948:	02a05c63          	blez	a0,80005980 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    8000594c:	0084b783          	ld	a5,8(s1)
    80005950:	0104a703          	lw	a4,16(s1)
    80005954:	00271713          	slli	a4,a4,0x2
    80005958:	00e787b3          	add	a5,a5,a4
        putc(ch);
    8000595c:	0007c503          	lbu	a0,0(a5)
    80005960:	ffffc097          	auipc	ra,0xffffc
    80005964:	5a8080e7          	jalr	1448(ra) # 80001f08 <_Z4putcc>
        head = (head + 1) % cap;
    80005968:	0104a783          	lw	a5,16(s1)
    8000596c:	0017879b          	addiw	a5,a5,1
    80005970:	0004a703          	lw	a4,0(s1)
    80005974:	02e7e7bb          	remw	a5,a5,a4
    80005978:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    8000597c:	fc1ff06f          	j	8000593c <_ZN6BufferD1Ev+0x34>
    putc('!');
    80005980:	02100513          	li	a0,33
    80005984:	ffffc097          	auipc	ra,0xffffc
    80005988:	584080e7          	jalr	1412(ra) # 80001f08 <_Z4putcc>
    putc('\n');
    8000598c:	00a00513          	li	a0,10
    80005990:	ffffc097          	auipc	ra,0xffffc
    80005994:	578080e7          	jalr	1400(ra) # 80001f08 <_Z4putcc>
    mem_free(buffer);
    80005998:	0084b503          	ld	a0,8(s1)
    8000599c:	ffffc097          	auipc	ra,0xffffc
    800059a0:	2bc080e7          	jalr	700(ra) # 80001c58 <_Z8mem_freePv>
    sem_close(itemAvailable);
    800059a4:	0204b503          	ld	a0,32(s1)
    800059a8:	ffffc097          	auipc	ra,0xffffc
    800059ac:	3dc080e7          	jalr	988(ra) # 80001d84 <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    800059b0:	0184b503          	ld	a0,24(s1)
    800059b4:	ffffc097          	auipc	ra,0xffffc
    800059b8:	3d0080e7          	jalr	976(ra) # 80001d84 <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    800059bc:	0304b503          	ld	a0,48(s1)
    800059c0:	ffffc097          	auipc	ra,0xffffc
    800059c4:	3c4080e7          	jalr	964(ra) # 80001d84 <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    800059c8:	0284b503          	ld	a0,40(s1)
    800059cc:	ffffc097          	auipc	ra,0xffffc
    800059d0:	3b8080e7          	jalr	952(ra) # 80001d84 <_Z9sem_closeP4_sem>
}
    800059d4:	01813083          	ld	ra,24(sp)
    800059d8:	01013403          	ld	s0,16(sp)
    800059dc:	00813483          	ld	s1,8(sp)
    800059e0:	02010113          	addi	sp,sp,32
    800059e4:	00008067          	ret

00000000800059e8 <start>:
    800059e8:	ff010113          	addi	sp,sp,-16
    800059ec:	00813423          	sd	s0,8(sp)
    800059f0:	01010413          	addi	s0,sp,16
    800059f4:	300027f3          	csrr	a5,mstatus
    800059f8:	ffffe737          	lui	a4,0xffffe
    800059fc:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7ffeef1f>
    80005a00:	00e7f7b3          	and	a5,a5,a4
    80005a04:	00001737          	lui	a4,0x1
    80005a08:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80005a0c:	00e7e7b3          	or	a5,a5,a4
    80005a10:	30079073          	csrw	mstatus,a5
    80005a14:	00000797          	auipc	a5,0x0
    80005a18:	16078793          	addi	a5,a5,352 # 80005b74 <system_main>
    80005a1c:	34179073          	csrw	mepc,a5
    80005a20:	00000793          	li	a5,0
    80005a24:	18079073          	csrw	satp,a5
    80005a28:	000107b7          	lui	a5,0x10
    80005a2c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80005a30:	30279073          	csrw	medeleg,a5
    80005a34:	30379073          	csrw	mideleg,a5
    80005a38:	104027f3          	csrr	a5,sie
    80005a3c:	2227e793          	ori	a5,a5,546
    80005a40:	10479073          	csrw	sie,a5
    80005a44:	fff00793          	li	a5,-1
    80005a48:	00a7d793          	srli	a5,a5,0xa
    80005a4c:	3b079073          	csrw	pmpaddr0,a5
    80005a50:	00f00793          	li	a5,15
    80005a54:	3a079073          	csrw	pmpcfg0,a5
    80005a58:	f14027f3          	csrr	a5,mhartid
    80005a5c:	0200c737          	lui	a4,0x200c
    80005a60:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005a64:	0007869b          	sext.w	a3,a5
    80005a68:	00269713          	slli	a4,a3,0x2
    80005a6c:	000f4637          	lui	a2,0xf4
    80005a70:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005a74:	00d70733          	add	a4,a4,a3
    80005a78:	0037979b          	slliw	a5,a5,0x3
    80005a7c:	020046b7          	lui	a3,0x2004
    80005a80:	00d787b3          	add	a5,a5,a3
    80005a84:	00c585b3          	add	a1,a1,a2
    80005a88:	00371693          	slli	a3,a4,0x3
    80005a8c:	00009717          	auipc	a4,0x9
    80005a90:	bf470713          	addi	a4,a4,-1036 # 8000e680 <timer_scratch>
    80005a94:	00b7b023          	sd	a1,0(a5)
    80005a98:	00d70733          	add	a4,a4,a3
    80005a9c:	00f73c23          	sd	a5,24(a4)
    80005aa0:	02c73023          	sd	a2,32(a4)
    80005aa4:	34071073          	csrw	mscratch,a4
    80005aa8:	00000797          	auipc	a5,0x0
    80005aac:	6e878793          	addi	a5,a5,1768 # 80006190 <timervec>
    80005ab0:	30579073          	csrw	mtvec,a5
    80005ab4:	300027f3          	csrr	a5,mstatus
    80005ab8:	0087e793          	ori	a5,a5,8
    80005abc:	30079073          	csrw	mstatus,a5
    80005ac0:	304027f3          	csrr	a5,mie
    80005ac4:	0807e793          	ori	a5,a5,128
    80005ac8:	30479073          	csrw	mie,a5
    80005acc:	f14027f3          	csrr	a5,mhartid
    80005ad0:	0007879b          	sext.w	a5,a5
    80005ad4:	00078213          	mv	tp,a5
    80005ad8:	30200073          	mret
    80005adc:	00813403          	ld	s0,8(sp)
    80005ae0:	01010113          	addi	sp,sp,16
    80005ae4:	00008067          	ret

0000000080005ae8 <timerinit>:
    80005ae8:	ff010113          	addi	sp,sp,-16
    80005aec:	00813423          	sd	s0,8(sp)
    80005af0:	01010413          	addi	s0,sp,16
    80005af4:	f14027f3          	csrr	a5,mhartid
    80005af8:	0200c737          	lui	a4,0x200c
    80005afc:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005b00:	0007869b          	sext.w	a3,a5
    80005b04:	00269713          	slli	a4,a3,0x2
    80005b08:	000f4637          	lui	a2,0xf4
    80005b0c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005b10:	00d70733          	add	a4,a4,a3
    80005b14:	0037979b          	slliw	a5,a5,0x3
    80005b18:	020046b7          	lui	a3,0x2004
    80005b1c:	00d787b3          	add	a5,a5,a3
    80005b20:	00c585b3          	add	a1,a1,a2
    80005b24:	00371693          	slli	a3,a4,0x3
    80005b28:	00009717          	auipc	a4,0x9
    80005b2c:	b5870713          	addi	a4,a4,-1192 # 8000e680 <timer_scratch>
    80005b30:	00b7b023          	sd	a1,0(a5)
    80005b34:	00d70733          	add	a4,a4,a3
    80005b38:	00f73c23          	sd	a5,24(a4)
    80005b3c:	02c73023          	sd	a2,32(a4)
    80005b40:	34071073          	csrw	mscratch,a4
    80005b44:	00000797          	auipc	a5,0x0
    80005b48:	64c78793          	addi	a5,a5,1612 # 80006190 <timervec>
    80005b4c:	30579073          	csrw	mtvec,a5
    80005b50:	300027f3          	csrr	a5,mstatus
    80005b54:	0087e793          	ori	a5,a5,8
    80005b58:	30079073          	csrw	mstatus,a5
    80005b5c:	304027f3          	csrr	a5,mie
    80005b60:	0807e793          	ori	a5,a5,128
    80005b64:	30479073          	csrw	mie,a5
    80005b68:	00813403          	ld	s0,8(sp)
    80005b6c:	01010113          	addi	sp,sp,16
    80005b70:	00008067          	ret

0000000080005b74 <system_main>:
    80005b74:	fe010113          	addi	sp,sp,-32
    80005b78:	00813823          	sd	s0,16(sp)
    80005b7c:	00913423          	sd	s1,8(sp)
    80005b80:	00113c23          	sd	ra,24(sp)
    80005b84:	02010413          	addi	s0,sp,32
    80005b88:	00000097          	auipc	ra,0x0
    80005b8c:	0c4080e7          	jalr	196(ra) # 80005c4c <cpuid>
    80005b90:	00005497          	auipc	s1,0x5
    80005b94:	a0048493          	addi	s1,s1,-1536 # 8000a590 <started>
    80005b98:	02050263          	beqz	a0,80005bbc <system_main+0x48>
    80005b9c:	0004a783          	lw	a5,0(s1)
    80005ba0:	0007879b          	sext.w	a5,a5
    80005ba4:	fe078ce3          	beqz	a5,80005b9c <system_main+0x28>
    80005ba8:	0ff0000f          	fence
    80005bac:	00003517          	auipc	a0,0x3
    80005bb0:	97450513          	addi	a0,a0,-1676 # 80008520 <CONSOLE_STATUS+0x510>
    80005bb4:	00001097          	auipc	ra,0x1
    80005bb8:	a78080e7          	jalr	-1416(ra) # 8000662c <panic>
    80005bbc:	00001097          	auipc	ra,0x1
    80005bc0:	9cc080e7          	jalr	-1588(ra) # 80006588 <consoleinit>
    80005bc4:	00001097          	auipc	ra,0x1
    80005bc8:	158080e7          	jalr	344(ra) # 80006d1c <printfinit>
    80005bcc:	00003517          	auipc	a0,0x3
    80005bd0:	a3450513          	addi	a0,a0,-1484 # 80008600 <CONSOLE_STATUS+0x5f0>
    80005bd4:	00001097          	auipc	ra,0x1
    80005bd8:	ab4080e7          	jalr	-1356(ra) # 80006688 <__printf>
    80005bdc:	00003517          	auipc	a0,0x3
    80005be0:	91450513          	addi	a0,a0,-1772 # 800084f0 <CONSOLE_STATUS+0x4e0>
    80005be4:	00001097          	auipc	ra,0x1
    80005be8:	aa4080e7          	jalr	-1372(ra) # 80006688 <__printf>
    80005bec:	00003517          	auipc	a0,0x3
    80005bf0:	a1450513          	addi	a0,a0,-1516 # 80008600 <CONSOLE_STATUS+0x5f0>
    80005bf4:	00001097          	auipc	ra,0x1
    80005bf8:	a94080e7          	jalr	-1388(ra) # 80006688 <__printf>
    80005bfc:	00001097          	auipc	ra,0x1
    80005c00:	4ac080e7          	jalr	1196(ra) # 800070a8 <kinit>
    80005c04:	00000097          	auipc	ra,0x0
    80005c08:	148080e7          	jalr	328(ra) # 80005d4c <trapinit>
    80005c0c:	00000097          	auipc	ra,0x0
    80005c10:	16c080e7          	jalr	364(ra) # 80005d78 <trapinithart>
    80005c14:	00000097          	auipc	ra,0x0
    80005c18:	5bc080e7          	jalr	1468(ra) # 800061d0 <plicinit>
    80005c1c:	00000097          	auipc	ra,0x0
    80005c20:	5dc080e7          	jalr	1500(ra) # 800061f8 <plicinithart>
    80005c24:	00000097          	auipc	ra,0x0
    80005c28:	078080e7          	jalr	120(ra) # 80005c9c <userinit>
    80005c2c:	0ff0000f          	fence
    80005c30:	00100793          	li	a5,1
    80005c34:	00003517          	auipc	a0,0x3
    80005c38:	8d450513          	addi	a0,a0,-1836 # 80008508 <CONSOLE_STATUS+0x4f8>
    80005c3c:	00f4a023          	sw	a5,0(s1)
    80005c40:	00001097          	auipc	ra,0x1
    80005c44:	a48080e7          	jalr	-1464(ra) # 80006688 <__printf>
    80005c48:	0000006f          	j	80005c48 <system_main+0xd4>

0000000080005c4c <cpuid>:
    80005c4c:	ff010113          	addi	sp,sp,-16
    80005c50:	00813423          	sd	s0,8(sp)
    80005c54:	01010413          	addi	s0,sp,16
    80005c58:	00020513          	mv	a0,tp
    80005c5c:	00813403          	ld	s0,8(sp)
    80005c60:	0005051b          	sext.w	a0,a0
    80005c64:	01010113          	addi	sp,sp,16
    80005c68:	00008067          	ret

0000000080005c6c <mycpu>:
    80005c6c:	ff010113          	addi	sp,sp,-16
    80005c70:	00813423          	sd	s0,8(sp)
    80005c74:	01010413          	addi	s0,sp,16
    80005c78:	00020793          	mv	a5,tp
    80005c7c:	00813403          	ld	s0,8(sp)
    80005c80:	0007879b          	sext.w	a5,a5
    80005c84:	00779793          	slli	a5,a5,0x7
    80005c88:	0000a517          	auipc	a0,0xa
    80005c8c:	a2850513          	addi	a0,a0,-1496 # 8000f6b0 <cpus>
    80005c90:	00f50533          	add	a0,a0,a5
    80005c94:	01010113          	addi	sp,sp,16
    80005c98:	00008067          	ret

0000000080005c9c <userinit>:
    80005c9c:	ff010113          	addi	sp,sp,-16
    80005ca0:	00813423          	sd	s0,8(sp)
    80005ca4:	01010413          	addi	s0,sp,16
    80005ca8:	00813403          	ld	s0,8(sp)
    80005cac:	01010113          	addi	sp,sp,16
    80005cb0:	ffffe317          	auipc	t1,0xffffe
    80005cb4:	8ec30067          	jr	-1812(t1) # 8000359c <main>

0000000080005cb8 <either_copyout>:
    80005cb8:	ff010113          	addi	sp,sp,-16
    80005cbc:	00813023          	sd	s0,0(sp)
    80005cc0:	00113423          	sd	ra,8(sp)
    80005cc4:	01010413          	addi	s0,sp,16
    80005cc8:	02051663          	bnez	a0,80005cf4 <either_copyout+0x3c>
    80005ccc:	00058513          	mv	a0,a1
    80005cd0:	00060593          	mv	a1,a2
    80005cd4:	0006861b          	sext.w	a2,a3
    80005cd8:	00002097          	auipc	ra,0x2
    80005cdc:	c5c080e7          	jalr	-932(ra) # 80007934 <__memmove>
    80005ce0:	00813083          	ld	ra,8(sp)
    80005ce4:	00013403          	ld	s0,0(sp)
    80005ce8:	00000513          	li	a0,0
    80005cec:	01010113          	addi	sp,sp,16
    80005cf0:	00008067          	ret
    80005cf4:	00003517          	auipc	a0,0x3
    80005cf8:	85450513          	addi	a0,a0,-1964 # 80008548 <CONSOLE_STATUS+0x538>
    80005cfc:	00001097          	auipc	ra,0x1
    80005d00:	930080e7          	jalr	-1744(ra) # 8000662c <panic>

0000000080005d04 <either_copyin>:
    80005d04:	ff010113          	addi	sp,sp,-16
    80005d08:	00813023          	sd	s0,0(sp)
    80005d0c:	00113423          	sd	ra,8(sp)
    80005d10:	01010413          	addi	s0,sp,16
    80005d14:	02059463          	bnez	a1,80005d3c <either_copyin+0x38>
    80005d18:	00060593          	mv	a1,a2
    80005d1c:	0006861b          	sext.w	a2,a3
    80005d20:	00002097          	auipc	ra,0x2
    80005d24:	c14080e7          	jalr	-1004(ra) # 80007934 <__memmove>
    80005d28:	00813083          	ld	ra,8(sp)
    80005d2c:	00013403          	ld	s0,0(sp)
    80005d30:	00000513          	li	a0,0
    80005d34:	01010113          	addi	sp,sp,16
    80005d38:	00008067          	ret
    80005d3c:	00003517          	auipc	a0,0x3
    80005d40:	83450513          	addi	a0,a0,-1996 # 80008570 <CONSOLE_STATUS+0x560>
    80005d44:	00001097          	auipc	ra,0x1
    80005d48:	8e8080e7          	jalr	-1816(ra) # 8000662c <panic>

0000000080005d4c <trapinit>:
    80005d4c:	ff010113          	addi	sp,sp,-16
    80005d50:	00813423          	sd	s0,8(sp)
    80005d54:	01010413          	addi	s0,sp,16
    80005d58:	00813403          	ld	s0,8(sp)
    80005d5c:	00003597          	auipc	a1,0x3
    80005d60:	83c58593          	addi	a1,a1,-1988 # 80008598 <CONSOLE_STATUS+0x588>
    80005d64:	0000a517          	auipc	a0,0xa
    80005d68:	9cc50513          	addi	a0,a0,-1588 # 8000f730 <tickslock>
    80005d6c:	01010113          	addi	sp,sp,16
    80005d70:	00001317          	auipc	t1,0x1
    80005d74:	5c830067          	jr	1480(t1) # 80007338 <initlock>

0000000080005d78 <trapinithart>:
    80005d78:	ff010113          	addi	sp,sp,-16
    80005d7c:	00813423          	sd	s0,8(sp)
    80005d80:	01010413          	addi	s0,sp,16
    80005d84:	00000797          	auipc	a5,0x0
    80005d88:	2fc78793          	addi	a5,a5,764 # 80006080 <kernelvec>
    80005d8c:	10579073          	csrw	stvec,a5
    80005d90:	00813403          	ld	s0,8(sp)
    80005d94:	01010113          	addi	sp,sp,16
    80005d98:	00008067          	ret

0000000080005d9c <usertrap>:
    80005d9c:	ff010113          	addi	sp,sp,-16
    80005da0:	00813423          	sd	s0,8(sp)
    80005da4:	01010413          	addi	s0,sp,16
    80005da8:	00813403          	ld	s0,8(sp)
    80005dac:	01010113          	addi	sp,sp,16
    80005db0:	00008067          	ret

0000000080005db4 <usertrapret>:
    80005db4:	ff010113          	addi	sp,sp,-16
    80005db8:	00813423          	sd	s0,8(sp)
    80005dbc:	01010413          	addi	s0,sp,16
    80005dc0:	00813403          	ld	s0,8(sp)
    80005dc4:	01010113          	addi	sp,sp,16
    80005dc8:	00008067          	ret

0000000080005dcc <kerneltrap>:
    80005dcc:	fe010113          	addi	sp,sp,-32
    80005dd0:	00813823          	sd	s0,16(sp)
    80005dd4:	00113c23          	sd	ra,24(sp)
    80005dd8:	00913423          	sd	s1,8(sp)
    80005ddc:	02010413          	addi	s0,sp,32
    80005de0:	142025f3          	csrr	a1,scause
    80005de4:	100027f3          	csrr	a5,sstatus
    80005de8:	0027f793          	andi	a5,a5,2
    80005dec:	10079c63          	bnez	a5,80005f04 <kerneltrap+0x138>
    80005df0:	142027f3          	csrr	a5,scause
    80005df4:	0207ce63          	bltz	a5,80005e30 <kerneltrap+0x64>
    80005df8:	00002517          	auipc	a0,0x2
    80005dfc:	7e850513          	addi	a0,a0,2024 # 800085e0 <CONSOLE_STATUS+0x5d0>
    80005e00:	00001097          	auipc	ra,0x1
    80005e04:	888080e7          	jalr	-1912(ra) # 80006688 <__printf>
    80005e08:	141025f3          	csrr	a1,sepc
    80005e0c:	14302673          	csrr	a2,stval
    80005e10:	00002517          	auipc	a0,0x2
    80005e14:	7e050513          	addi	a0,a0,2016 # 800085f0 <CONSOLE_STATUS+0x5e0>
    80005e18:	00001097          	auipc	ra,0x1
    80005e1c:	870080e7          	jalr	-1936(ra) # 80006688 <__printf>
    80005e20:	00002517          	auipc	a0,0x2
    80005e24:	7e850513          	addi	a0,a0,2024 # 80008608 <CONSOLE_STATUS+0x5f8>
    80005e28:	00001097          	auipc	ra,0x1
    80005e2c:	804080e7          	jalr	-2044(ra) # 8000662c <panic>
    80005e30:	0ff7f713          	andi	a4,a5,255
    80005e34:	00900693          	li	a3,9
    80005e38:	04d70063          	beq	a4,a3,80005e78 <kerneltrap+0xac>
    80005e3c:	fff00713          	li	a4,-1
    80005e40:	03f71713          	slli	a4,a4,0x3f
    80005e44:	00170713          	addi	a4,a4,1
    80005e48:	fae798e3          	bne	a5,a4,80005df8 <kerneltrap+0x2c>
    80005e4c:	00000097          	auipc	ra,0x0
    80005e50:	e00080e7          	jalr	-512(ra) # 80005c4c <cpuid>
    80005e54:	06050663          	beqz	a0,80005ec0 <kerneltrap+0xf4>
    80005e58:	144027f3          	csrr	a5,sip
    80005e5c:	ffd7f793          	andi	a5,a5,-3
    80005e60:	14479073          	csrw	sip,a5
    80005e64:	01813083          	ld	ra,24(sp)
    80005e68:	01013403          	ld	s0,16(sp)
    80005e6c:	00813483          	ld	s1,8(sp)
    80005e70:	02010113          	addi	sp,sp,32
    80005e74:	00008067          	ret
    80005e78:	00000097          	auipc	ra,0x0
    80005e7c:	3cc080e7          	jalr	972(ra) # 80006244 <plic_claim>
    80005e80:	00a00793          	li	a5,10
    80005e84:	00050493          	mv	s1,a0
    80005e88:	06f50863          	beq	a0,a5,80005ef8 <kerneltrap+0x12c>
    80005e8c:	fc050ce3          	beqz	a0,80005e64 <kerneltrap+0x98>
    80005e90:	00050593          	mv	a1,a0
    80005e94:	00002517          	auipc	a0,0x2
    80005e98:	72c50513          	addi	a0,a0,1836 # 800085c0 <CONSOLE_STATUS+0x5b0>
    80005e9c:	00000097          	auipc	ra,0x0
    80005ea0:	7ec080e7          	jalr	2028(ra) # 80006688 <__printf>
    80005ea4:	01013403          	ld	s0,16(sp)
    80005ea8:	01813083          	ld	ra,24(sp)
    80005eac:	00048513          	mv	a0,s1
    80005eb0:	00813483          	ld	s1,8(sp)
    80005eb4:	02010113          	addi	sp,sp,32
    80005eb8:	00000317          	auipc	t1,0x0
    80005ebc:	3c430067          	jr	964(t1) # 8000627c <plic_complete>
    80005ec0:	0000a517          	auipc	a0,0xa
    80005ec4:	87050513          	addi	a0,a0,-1936 # 8000f730 <tickslock>
    80005ec8:	00001097          	auipc	ra,0x1
    80005ecc:	494080e7          	jalr	1172(ra) # 8000735c <acquire>
    80005ed0:	00004717          	auipc	a4,0x4
    80005ed4:	6c470713          	addi	a4,a4,1732 # 8000a594 <ticks>
    80005ed8:	00072783          	lw	a5,0(a4)
    80005edc:	0000a517          	auipc	a0,0xa
    80005ee0:	85450513          	addi	a0,a0,-1964 # 8000f730 <tickslock>
    80005ee4:	0017879b          	addiw	a5,a5,1
    80005ee8:	00f72023          	sw	a5,0(a4)
    80005eec:	00001097          	auipc	ra,0x1
    80005ef0:	53c080e7          	jalr	1340(ra) # 80007428 <release>
    80005ef4:	f65ff06f          	j	80005e58 <kerneltrap+0x8c>
    80005ef8:	00001097          	auipc	ra,0x1
    80005efc:	098080e7          	jalr	152(ra) # 80006f90 <uartintr>
    80005f00:	fa5ff06f          	j	80005ea4 <kerneltrap+0xd8>
    80005f04:	00002517          	auipc	a0,0x2
    80005f08:	69c50513          	addi	a0,a0,1692 # 800085a0 <CONSOLE_STATUS+0x590>
    80005f0c:	00000097          	auipc	ra,0x0
    80005f10:	720080e7          	jalr	1824(ra) # 8000662c <panic>

0000000080005f14 <clockintr>:
    80005f14:	fe010113          	addi	sp,sp,-32
    80005f18:	00813823          	sd	s0,16(sp)
    80005f1c:	00913423          	sd	s1,8(sp)
    80005f20:	00113c23          	sd	ra,24(sp)
    80005f24:	02010413          	addi	s0,sp,32
    80005f28:	0000a497          	auipc	s1,0xa
    80005f2c:	80848493          	addi	s1,s1,-2040 # 8000f730 <tickslock>
    80005f30:	00048513          	mv	a0,s1
    80005f34:	00001097          	auipc	ra,0x1
    80005f38:	428080e7          	jalr	1064(ra) # 8000735c <acquire>
    80005f3c:	00004717          	auipc	a4,0x4
    80005f40:	65870713          	addi	a4,a4,1624 # 8000a594 <ticks>
    80005f44:	00072783          	lw	a5,0(a4)
    80005f48:	01013403          	ld	s0,16(sp)
    80005f4c:	01813083          	ld	ra,24(sp)
    80005f50:	00048513          	mv	a0,s1
    80005f54:	0017879b          	addiw	a5,a5,1
    80005f58:	00813483          	ld	s1,8(sp)
    80005f5c:	00f72023          	sw	a5,0(a4)
    80005f60:	02010113          	addi	sp,sp,32
    80005f64:	00001317          	auipc	t1,0x1
    80005f68:	4c430067          	jr	1220(t1) # 80007428 <release>

0000000080005f6c <devintr>:
    80005f6c:	142027f3          	csrr	a5,scause
    80005f70:	00000513          	li	a0,0
    80005f74:	0007c463          	bltz	a5,80005f7c <devintr+0x10>
    80005f78:	00008067          	ret
    80005f7c:	fe010113          	addi	sp,sp,-32
    80005f80:	00813823          	sd	s0,16(sp)
    80005f84:	00113c23          	sd	ra,24(sp)
    80005f88:	00913423          	sd	s1,8(sp)
    80005f8c:	02010413          	addi	s0,sp,32
    80005f90:	0ff7f713          	andi	a4,a5,255
    80005f94:	00900693          	li	a3,9
    80005f98:	04d70c63          	beq	a4,a3,80005ff0 <devintr+0x84>
    80005f9c:	fff00713          	li	a4,-1
    80005fa0:	03f71713          	slli	a4,a4,0x3f
    80005fa4:	00170713          	addi	a4,a4,1
    80005fa8:	00e78c63          	beq	a5,a4,80005fc0 <devintr+0x54>
    80005fac:	01813083          	ld	ra,24(sp)
    80005fb0:	01013403          	ld	s0,16(sp)
    80005fb4:	00813483          	ld	s1,8(sp)
    80005fb8:	02010113          	addi	sp,sp,32
    80005fbc:	00008067          	ret
    80005fc0:	00000097          	auipc	ra,0x0
    80005fc4:	c8c080e7          	jalr	-884(ra) # 80005c4c <cpuid>
    80005fc8:	06050663          	beqz	a0,80006034 <devintr+0xc8>
    80005fcc:	144027f3          	csrr	a5,sip
    80005fd0:	ffd7f793          	andi	a5,a5,-3
    80005fd4:	14479073          	csrw	sip,a5
    80005fd8:	01813083          	ld	ra,24(sp)
    80005fdc:	01013403          	ld	s0,16(sp)
    80005fe0:	00813483          	ld	s1,8(sp)
    80005fe4:	00200513          	li	a0,2
    80005fe8:	02010113          	addi	sp,sp,32
    80005fec:	00008067          	ret
    80005ff0:	00000097          	auipc	ra,0x0
    80005ff4:	254080e7          	jalr	596(ra) # 80006244 <plic_claim>
    80005ff8:	00a00793          	li	a5,10
    80005ffc:	00050493          	mv	s1,a0
    80006000:	06f50663          	beq	a0,a5,8000606c <devintr+0x100>
    80006004:	00100513          	li	a0,1
    80006008:	fa0482e3          	beqz	s1,80005fac <devintr+0x40>
    8000600c:	00048593          	mv	a1,s1
    80006010:	00002517          	auipc	a0,0x2
    80006014:	5b050513          	addi	a0,a0,1456 # 800085c0 <CONSOLE_STATUS+0x5b0>
    80006018:	00000097          	auipc	ra,0x0
    8000601c:	670080e7          	jalr	1648(ra) # 80006688 <__printf>
    80006020:	00048513          	mv	a0,s1
    80006024:	00000097          	auipc	ra,0x0
    80006028:	258080e7          	jalr	600(ra) # 8000627c <plic_complete>
    8000602c:	00100513          	li	a0,1
    80006030:	f7dff06f          	j	80005fac <devintr+0x40>
    80006034:	00009517          	auipc	a0,0x9
    80006038:	6fc50513          	addi	a0,a0,1788 # 8000f730 <tickslock>
    8000603c:	00001097          	auipc	ra,0x1
    80006040:	320080e7          	jalr	800(ra) # 8000735c <acquire>
    80006044:	00004717          	auipc	a4,0x4
    80006048:	55070713          	addi	a4,a4,1360 # 8000a594 <ticks>
    8000604c:	00072783          	lw	a5,0(a4)
    80006050:	00009517          	auipc	a0,0x9
    80006054:	6e050513          	addi	a0,a0,1760 # 8000f730 <tickslock>
    80006058:	0017879b          	addiw	a5,a5,1
    8000605c:	00f72023          	sw	a5,0(a4)
    80006060:	00001097          	auipc	ra,0x1
    80006064:	3c8080e7          	jalr	968(ra) # 80007428 <release>
    80006068:	f65ff06f          	j	80005fcc <devintr+0x60>
    8000606c:	00001097          	auipc	ra,0x1
    80006070:	f24080e7          	jalr	-220(ra) # 80006f90 <uartintr>
    80006074:	fadff06f          	j	80006020 <devintr+0xb4>
	...

0000000080006080 <kernelvec>:
    80006080:	f0010113          	addi	sp,sp,-256
    80006084:	00113023          	sd	ra,0(sp)
    80006088:	00213423          	sd	sp,8(sp)
    8000608c:	00313823          	sd	gp,16(sp)
    80006090:	00413c23          	sd	tp,24(sp)
    80006094:	02513023          	sd	t0,32(sp)
    80006098:	02613423          	sd	t1,40(sp)
    8000609c:	02713823          	sd	t2,48(sp)
    800060a0:	02813c23          	sd	s0,56(sp)
    800060a4:	04913023          	sd	s1,64(sp)
    800060a8:	04a13423          	sd	a0,72(sp)
    800060ac:	04b13823          	sd	a1,80(sp)
    800060b0:	04c13c23          	sd	a2,88(sp)
    800060b4:	06d13023          	sd	a3,96(sp)
    800060b8:	06e13423          	sd	a4,104(sp)
    800060bc:	06f13823          	sd	a5,112(sp)
    800060c0:	07013c23          	sd	a6,120(sp)
    800060c4:	09113023          	sd	a7,128(sp)
    800060c8:	09213423          	sd	s2,136(sp)
    800060cc:	09313823          	sd	s3,144(sp)
    800060d0:	09413c23          	sd	s4,152(sp)
    800060d4:	0b513023          	sd	s5,160(sp)
    800060d8:	0b613423          	sd	s6,168(sp)
    800060dc:	0b713823          	sd	s7,176(sp)
    800060e0:	0b813c23          	sd	s8,184(sp)
    800060e4:	0d913023          	sd	s9,192(sp)
    800060e8:	0da13423          	sd	s10,200(sp)
    800060ec:	0db13823          	sd	s11,208(sp)
    800060f0:	0dc13c23          	sd	t3,216(sp)
    800060f4:	0fd13023          	sd	t4,224(sp)
    800060f8:	0fe13423          	sd	t5,232(sp)
    800060fc:	0ff13823          	sd	t6,240(sp)
    80006100:	ccdff0ef          	jal	ra,80005dcc <kerneltrap>
    80006104:	00013083          	ld	ra,0(sp)
    80006108:	00813103          	ld	sp,8(sp)
    8000610c:	01013183          	ld	gp,16(sp)
    80006110:	02013283          	ld	t0,32(sp)
    80006114:	02813303          	ld	t1,40(sp)
    80006118:	03013383          	ld	t2,48(sp)
    8000611c:	03813403          	ld	s0,56(sp)
    80006120:	04013483          	ld	s1,64(sp)
    80006124:	04813503          	ld	a0,72(sp)
    80006128:	05013583          	ld	a1,80(sp)
    8000612c:	05813603          	ld	a2,88(sp)
    80006130:	06013683          	ld	a3,96(sp)
    80006134:	06813703          	ld	a4,104(sp)
    80006138:	07013783          	ld	a5,112(sp)
    8000613c:	07813803          	ld	a6,120(sp)
    80006140:	08013883          	ld	a7,128(sp)
    80006144:	08813903          	ld	s2,136(sp)
    80006148:	09013983          	ld	s3,144(sp)
    8000614c:	09813a03          	ld	s4,152(sp)
    80006150:	0a013a83          	ld	s5,160(sp)
    80006154:	0a813b03          	ld	s6,168(sp)
    80006158:	0b013b83          	ld	s7,176(sp)
    8000615c:	0b813c03          	ld	s8,184(sp)
    80006160:	0c013c83          	ld	s9,192(sp)
    80006164:	0c813d03          	ld	s10,200(sp)
    80006168:	0d013d83          	ld	s11,208(sp)
    8000616c:	0d813e03          	ld	t3,216(sp)
    80006170:	0e013e83          	ld	t4,224(sp)
    80006174:	0e813f03          	ld	t5,232(sp)
    80006178:	0f013f83          	ld	t6,240(sp)
    8000617c:	10010113          	addi	sp,sp,256
    80006180:	10200073          	sret
    80006184:	00000013          	nop
    80006188:	00000013          	nop
    8000618c:	00000013          	nop

0000000080006190 <timervec>:
    80006190:	34051573          	csrrw	a0,mscratch,a0
    80006194:	00b53023          	sd	a1,0(a0)
    80006198:	00c53423          	sd	a2,8(a0)
    8000619c:	00d53823          	sd	a3,16(a0)
    800061a0:	01853583          	ld	a1,24(a0)
    800061a4:	02053603          	ld	a2,32(a0)
    800061a8:	0005b683          	ld	a3,0(a1)
    800061ac:	00c686b3          	add	a3,a3,a2
    800061b0:	00d5b023          	sd	a3,0(a1)
    800061b4:	00200593          	li	a1,2
    800061b8:	14459073          	csrw	sip,a1
    800061bc:	01053683          	ld	a3,16(a0)
    800061c0:	00853603          	ld	a2,8(a0)
    800061c4:	00053583          	ld	a1,0(a0)
    800061c8:	34051573          	csrrw	a0,mscratch,a0
    800061cc:	30200073          	mret

00000000800061d0 <plicinit>:
    800061d0:	ff010113          	addi	sp,sp,-16
    800061d4:	00813423          	sd	s0,8(sp)
    800061d8:	01010413          	addi	s0,sp,16
    800061dc:	00813403          	ld	s0,8(sp)
    800061e0:	0c0007b7          	lui	a5,0xc000
    800061e4:	00100713          	li	a4,1
    800061e8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800061ec:	00e7a223          	sw	a4,4(a5)
    800061f0:	01010113          	addi	sp,sp,16
    800061f4:	00008067          	ret

00000000800061f8 <plicinithart>:
    800061f8:	ff010113          	addi	sp,sp,-16
    800061fc:	00813023          	sd	s0,0(sp)
    80006200:	00113423          	sd	ra,8(sp)
    80006204:	01010413          	addi	s0,sp,16
    80006208:	00000097          	auipc	ra,0x0
    8000620c:	a44080e7          	jalr	-1468(ra) # 80005c4c <cpuid>
    80006210:	0085171b          	slliw	a4,a0,0x8
    80006214:	0c0027b7          	lui	a5,0xc002
    80006218:	00e787b3          	add	a5,a5,a4
    8000621c:	40200713          	li	a4,1026
    80006220:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006224:	00813083          	ld	ra,8(sp)
    80006228:	00013403          	ld	s0,0(sp)
    8000622c:	00d5151b          	slliw	a0,a0,0xd
    80006230:	0c2017b7          	lui	a5,0xc201
    80006234:	00a78533          	add	a0,a5,a0
    80006238:	00052023          	sw	zero,0(a0)
    8000623c:	01010113          	addi	sp,sp,16
    80006240:	00008067          	ret

0000000080006244 <plic_claim>:
    80006244:	ff010113          	addi	sp,sp,-16
    80006248:	00813023          	sd	s0,0(sp)
    8000624c:	00113423          	sd	ra,8(sp)
    80006250:	01010413          	addi	s0,sp,16
    80006254:	00000097          	auipc	ra,0x0
    80006258:	9f8080e7          	jalr	-1544(ra) # 80005c4c <cpuid>
    8000625c:	00813083          	ld	ra,8(sp)
    80006260:	00013403          	ld	s0,0(sp)
    80006264:	00d5151b          	slliw	a0,a0,0xd
    80006268:	0c2017b7          	lui	a5,0xc201
    8000626c:	00a78533          	add	a0,a5,a0
    80006270:	00452503          	lw	a0,4(a0)
    80006274:	01010113          	addi	sp,sp,16
    80006278:	00008067          	ret

000000008000627c <plic_complete>:
    8000627c:	fe010113          	addi	sp,sp,-32
    80006280:	00813823          	sd	s0,16(sp)
    80006284:	00913423          	sd	s1,8(sp)
    80006288:	00113c23          	sd	ra,24(sp)
    8000628c:	02010413          	addi	s0,sp,32
    80006290:	00050493          	mv	s1,a0
    80006294:	00000097          	auipc	ra,0x0
    80006298:	9b8080e7          	jalr	-1608(ra) # 80005c4c <cpuid>
    8000629c:	01813083          	ld	ra,24(sp)
    800062a0:	01013403          	ld	s0,16(sp)
    800062a4:	00d5179b          	slliw	a5,a0,0xd
    800062a8:	0c201737          	lui	a4,0xc201
    800062ac:	00f707b3          	add	a5,a4,a5
    800062b0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800062b4:	00813483          	ld	s1,8(sp)
    800062b8:	02010113          	addi	sp,sp,32
    800062bc:	00008067          	ret

00000000800062c0 <consolewrite>:
    800062c0:	fb010113          	addi	sp,sp,-80
    800062c4:	04813023          	sd	s0,64(sp)
    800062c8:	04113423          	sd	ra,72(sp)
    800062cc:	02913c23          	sd	s1,56(sp)
    800062d0:	03213823          	sd	s2,48(sp)
    800062d4:	03313423          	sd	s3,40(sp)
    800062d8:	03413023          	sd	s4,32(sp)
    800062dc:	01513c23          	sd	s5,24(sp)
    800062e0:	05010413          	addi	s0,sp,80
    800062e4:	06c05c63          	blez	a2,8000635c <consolewrite+0x9c>
    800062e8:	00060993          	mv	s3,a2
    800062ec:	00050a13          	mv	s4,a0
    800062f0:	00058493          	mv	s1,a1
    800062f4:	00000913          	li	s2,0
    800062f8:	fff00a93          	li	s5,-1
    800062fc:	01c0006f          	j	80006318 <consolewrite+0x58>
    80006300:	fbf44503          	lbu	a0,-65(s0)
    80006304:	0019091b          	addiw	s2,s2,1
    80006308:	00148493          	addi	s1,s1,1
    8000630c:	00001097          	auipc	ra,0x1
    80006310:	a9c080e7          	jalr	-1380(ra) # 80006da8 <uartputc>
    80006314:	03298063          	beq	s3,s2,80006334 <consolewrite+0x74>
    80006318:	00048613          	mv	a2,s1
    8000631c:	00100693          	li	a3,1
    80006320:	000a0593          	mv	a1,s4
    80006324:	fbf40513          	addi	a0,s0,-65
    80006328:	00000097          	auipc	ra,0x0
    8000632c:	9dc080e7          	jalr	-1572(ra) # 80005d04 <either_copyin>
    80006330:	fd5518e3          	bne	a0,s5,80006300 <consolewrite+0x40>
    80006334:	04813083          	ld	ra,72(sp)
    80006338:	04013403          	ld	s0,64(sp)
    8000633c:	03813483          	ld	s1,56(sp)
    80006340:	02813983          	ld	s3,40(sp)
    80006344:	02013a03          	ld	s4,32(sp)
    80006348:	01813a83          	ld	s5,24(sp)
    8000634c:	00090513          	mv	a0,s2
    80006350:	03013903          	ld	s2,48(sp)
    80006354:	05010113          	addi	sp,sp,80
    80006358:	00008067          	ret
    8000635c:	00000913          	li	s2,0
    80006360:	fd5ff06f          	j	80006334 <consolewrite+0x74>

0000000080006364 <consoleread>:
    80006364:	f9010113          	addi	sp,sp,-112
    80006368:	06813023          	sd	s0,96(sp)
    8000636c:	04913c23          	sd	s1,88(sp)
    80006370:	05213823          	sd	s2,80(sp)
    80006374:	05313423          	sd	s3,72(sp)
    80006378:	05413023          	sd	s4,64(sp)
    8000637c:	03513c23          	sd	s5,56(sp)
    80006380:	03613823          	sd	s6,48(sp)
    80006384:	03713423          	sd	s7,40(sp)
    80006388:	03813023          	sd	s8,32(sp)
    8000638c:	06113423          	sd	ra,104(sp)
    80006390:	01913c23          	sd	s9,24(sp)
    80006394:	07010413          	addi	s0,sp,112
    80006398:	00060b93          	mv	s7,a2
    8000639c:	00050913          	mv	s2,a0
    800063a0:	00058c13          	mv	s8,a1
    800063a4:	00060b1b          	sext.w	s6,a2
    800063a8:	00009497          	auipc	s1,0x9
    800063ac:	3b048493          	addi	s1,s1,944 # 8000f758 <cons>
    800063b0:	00400993          	li	s3,4
    800063b4:	fff00a13          	li	s4,-1
    800063b8:	00a00a93          	li	s5,10
    800063bc:	05705e63          	blez	s7,80006418 <consoleread+0xb4>
    800063c0:	09c4a703          	lw	a4,156(s1)
    800063c4:	0984a783          	lw	a5,152(s1)
    800063c8:	0007071b          	sext.w	a4,a4
    800063cc:	08e78463          	beq	a5,a4,80006454 <consoleread+0xf0>
    800063d0:	07f7f713          	andi	a4,a5,127
    800063d4:	00e48733          	add	a4,s1,a4
    800063d8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800063dc:	0017869b          	addiw	a3,a5,1
    800063e0:	08d4ac23          	sw	a3,152(s1)
    800063e4:	00070c9b          	sext.w	s9,a4
    800063e8:	0b370663          	beq	a4,s3,80006494 <consoleread+0x130>
    800063ec:	00100693          	li	a3,1
    800063f0:	f9f40613          	addi	a2,s0,-97
    800063f4:	000c0593          	mv	a1,s8
    800063f8:	00090513          	mv	a0,s2
    800063fc:	f8e40fa3          	sb	a4,-97(s0)
    80006400:	00000097          	auipc	ra,0x0
    80006404:	8b8080e7          	jalr	-1864(ra) # 80005cb8 <either_copyout>
    80006408:	01450863          	beq	a0,s4,80006418 <consoleread+0xb4>
    8000640c:	001c0c13          	addi	s8,s8,1
    80006410:	fffb8b9b          	addiw	s7,s7,-1
    80006414:	fb5c94e3          	bne	s9,s5,800063bc <consoleread+0x58>
    80006418:	000b851b          	sext.w	a0,s7
    8000641c:	06813083          	ld	ra,104(sp)
    80006420:	06013403          	ld	s0,96(sp)
    80006424:	05813483          	ld	s1,88(sp)
    80006428:	05013903          	ld	s2,80(sp)
    8000642c:	04813983          	ld	s3,72(sp)
    80006430:	04013a03          	ld	s4,64(sp)
    80006434:	03813a83          	ld	s5,56(sp)
    80006438:	02813b83          	ld	s7,40(sp)
    8000643c:	02013c03          	ld	s8,32(sp)
    80006440:	01813c83          	ld	s9,24(sp)
    80006444:	40ab053b          	subw	a0,s6,a0
    80006448:	03013b03          	ld	s6,48(sp)
    8000644c:	07010113          	addi	sp,sp,112
    80006450:	00008067          	ret
    80006454:	00001097          	auipc	ra,0x1
    80006458:	1d8080e7          	jalr	472(ra) # 8000762c <push_on>
    8000645c:	0984a703          	lw	a4,152(s1)
    80006460:	09c4a783          	lw	a5,156(s1)
    80006464:	0007879b          	sext.w	a5,a5
    80006468:	fef70ce3          	beq	a4,a5,80006460 <consoleread+0xfc>
    8000646c:	00001097          	auipc	ra,0x1
    80006470:	234080e7          	jalr	564(ra) # 800076a0 <pop_on>
    80006474:	0984a783          	lw	a5,152(s1)
    80006478:	07f7f713          	andi	a4,a5,127
    8000647c:	00e48733          	add	a4,s1,a4
    80006480:	01874703          	lbu	a4,24(a4)
    80006484:	0017869b          	addiw	a3,a5,1
    80006488:	08d4ac23          	sw	a3,152(s1)
    8000648c:	00070c9b          	sext.w	s9,a4
    80006490:	f5371ee3          	bne	a4,s3,800063ec <consoleread+0x88>
    80006494:	000b851b          	sext.w	a0,s7
    80006498:	f96bf2e3          	bgeu	s7,s6,8000641c <consoleread+0xb8>
    8000649c:	08f4ac23          	sw	a5,152(s1)
    800064a0:	f7dff06f          	j	8000641c <consoleread+0xb8>

00000000800064a4 <consputc>:
    800064a4:	10000793          	li	a5,256
    800064a8:	00f50663          	beq	a0,a5,800064b4 <consputc+0x10>
    800064ac:	00001317          	auipc	t1,0x1
    800064b0:	9f430067          	jr	-1548(t1) # 80006ea0 <uartputc_sync>
    800064b4:	ff010113          	addi	sp,sp,-16
    800064b8:	00113423          	sd	ra,8(sp)
    800064bc:	00813023          	sd	s0,0(sp)
    800064c0:	01010413          	addi	s0,sp,16
    800064c4:	00800513          	li	a0,8
    800064c8:	00001097          	auipc	ra,0x1
    800064cc:	9d8080e7          	jalr	-1576(ra) # 80006ea0 <uartputc_sync>
    800064d0:	02000513          	li	a0,32
    800064d4:	00001097          	auipc	ra,0x1
    800064d8:	9cc080e7          	jalr	-1588(ra) # 80006ea0 <uartputc_sync>
    800064dc:	00013403          	ld	s0,0(sp)
    800064e0:	00813083          	ld	ra,8(sp)
    800064e4:	00800513          	li	a0,8
    800064e8:	01010113          	addi	sp,sp,16
    800064ec:	00001317          	auipc	t1,0x1
    800064f0:	9b430067          	jr	-1612(t1) # 80006ea0 <uartputc_sync>

00000000800064f4 <consoleintr>:
    800064f4:	fe010113          	addi	sp,sp,-32
    800064f8:	00813823          	sd	s0,16(sp)
    800064fc:	00913423          	sd	s1,8(sp)
    80006500:	01213023          	sd	s2,0(sp)
    80006504:	00113c23          	sd	ra,24(sp)
    80006508:	02010413          	addi	s0,sp,32
    8000650c:	00009917          	auipc	s2,0x9
    80006510:	24c90913          	addi	s2,s2,588 # 8000f758 <cons>
    80006514:	00050493          	mv	s1,a0
    80006518:	00090513          	mv	a0,s2
    8000651c:	00001097          	auipc	ra,0x1
    80006520:	e40080e7          	jalr	-448(ra) # 8000735c <acquire>
    80006524:	02048c63          	beqz	s1,8000655c <consoleintr+0x68>
    80006528:	0a092783          	lw	a5,160(s2)
    8000652c:	09892703          	lw	a4,152(s2)
    80006530:	07f00693          	li	a3,127
    80006534:	40e7873b          	subw	a4,a5,a4
    80006538:	02e6e263          	bltu	a3,a4,8000655c <consoleintr+0x68>
    8000653c:	00d00713          	li	a4,13
    80006540:	04e48063          	beq	s1,a4,80006580 <consoleintr+0x8c>
    80006544:	07f7f713          	andi	a4,a5,127
    80006548:	00e90733          	add	a4,s2,a4
    8000654c:	0017879b          	addiw	a5,a5,1
    80006550:	0af92023          	sw	a5,160(s2)
    80006554:	00970c23          	sb	s1,24(a4)
    80006558:	08f92e23          	sw	a5,156(s2)
    8000655c:	01013403          	ld	s0,16(sp)
    80006560:	01813083          	ld	ra,24(sp)
    80006564:	00813483          	ld	s1,8(sp)
    80006568:	00013903          	ld	s2,0(sp)
    8000656c:	00009517          	auipc	a0,0x9
    80006570:	1ec50513          	addi	a0,a0,492 # 8000f758 <cons>
    80006574:	02010113          	addi	sp,sp,32
    80006578:	00001317          	auipc	t1,0x1
    8000657c:	eb030067          	jr	-336(t1) # 80007428 <release>
    80006580:	00a00493          	li	s1,10
    80006584:	fc1ff06f          	j	80006544 <consoleintr+0x50>

0000000080006588 <consoleinit>:
    80006588:	fe010113          	addi	sp,sp,-32
    8000658c:	00113c23          	sd	ra,24(sp)
    80006590:	00813823          	sd	s0,16(sp)
    80006594:	00913423          	sd	s1,8(sp)
    80006598:	02010413          	addi	s0,sp,32
    8000659c:	00009497          	auipc	s1,0x9
    800065a0:	1bc48493          	addi	s1,s1,444 # 8000f758 <cons>
    800065a4:	00048513          	mv	a0,s1
    800065a8:	00002597          	auipc	a1,0x2
    800065ac:	07058593          	addi	a1,a1,112 # 80008618 <CONSOLE_STATUS+0x608>
    800065b0:	00001097          	auipc	ra,0x1
    800065b4:	d88080e7          	jalr	-632(ra) # 80007338 <initlock>
    800065b8:	00000097          	auipc	ra,0x0
    800065bc:	7ac080e7          	jalr	1964(ra) # 80006d64 <uartinit>
    800065c0:	01813083          	ld	ra,24(sp)
    800065c4:	01013403          	ld	s0,16(sp)
    800065c8:	00000797          	auipc	a5,0x0
    800065cc:	d9c78793          	addi	a5,a5,-612 # 80006364 <consoleread>
    800065d0:	0af4bc23          	sd	a5,184(s1)
    800065d4:	00000797          	auipc	a5,0x0
    800065d8:	cec78793          	addi	a5,a5,-788 # 800062c0 <consolewrite>
    800065dc:	0cf4b023          	sd	a5,192(s1)
    800065e0:	00813483          	ld	s1,8(sp)
    800065e4:	02010113          	addi	sp,sp,32
    800065e8:	00008067          	ret

00000000800065ec <console_read>:
    800065ec:	ff010113          	addi	sp,sp,-16
    800065f0:	00813423          	sd	s0,8(sp)
    800065f4:	01010413          	addi	s0,sp,16
    800065f8:	00813403          	ld	s0,8(sp)
    800065fc:	00009317          	auipc	t1,0x9
    80006600:	21433303          	ld	t1,532(t1) # 8000f810 <devsw+0x10>
    80006604:	01010113          	addi	sp,sp,16
    80006608:	00030067          	jr	t1

000000008000660c <console_write>:
    8000660c:	ff010113          	addi	sp,sp,-16
    80006610:	00813423          	sd	s0,8(sp)
    80006614:	01010413          	addi	s0,sp,16
    80006618:	00813403          	ld	s0,8(sp)
    8000661c:	00009317          	auipc	t1,0x9
    80006620:	1fc33303          	ld	t1,508(t1) # 8000f818 <devsw+0x18>
    80006624:	01010113          	addi	sp,sp,16
    80006628:	00030067          	jr	t1

000000008000662c <panic>:
    8000662c:	fe010113          	addi	sp,sp,-32
    80006630:	00113c23          	sd	ra,24(sp)
    80006634:	00813823          	sd	s0,16(sp)
    80006638:	00913423          	sd	s1,8(sp)
    8000663c:	02010413          	addi	s0,sp,32
    80006640:	00050493          	mv	s1,a0
    80006644:	00002517          	auipc	a0,0x2
    80006648:	fdc50513          	addi	a0,a0,-36 # 80008620 <CONSOLE_STATUS+0x610>
    8000664c:	00009797          	auipc	a5,0x9
    80006650:	2607a623          	sw	zero,620(a5) # 8000f8b8 <pr+0x18>
    80006654:	00000097          	auipc	ra,0x0
    80006658:	034080e7          	jalr	52(ra) # 80006688 <__printf>
    8000665c:	00048513          	mv	a0,s1
    80006660:	00000097          	auipc	ra,0x0
    80006664:	028080e7          	jalr	40(ra) # 80006688 <__printf>
    80006668:	00002517          	auipc	a0,0x2
    8000666c:	f9850513          	addi	a0,a0,-104 # 80008600 <CONSOLE_STATUS+0x5f0>
    80006670:	00000097          	auipc	ra,0x0
    80006674:	018080e7          	jalr	24(ra) # 80006688 <__printf>
    80006678:	00100793          	li	a5,1
    8000667c:	00004717          	auipc	a4,0x4
    80006680:	f0f72e23          	sw	a5,-228(a4) # 8000a598 <panicked>
    80006684:	0000006f          	j	80006684 <panic+0x58>

0000000080006688 <__printf>:
    80006688:	f3010113          	addi	sp,sp,-208
    8000668c:	08813023          	sd	s0,128(sp)
    80006690:	07313423          	sd	s3,104(sp)
    80006694:	09010413          	addi	s0,sp,144
    80006698:	05813023          	sd	s8,64(sp)
    8000669c:	08113423          	sd	ra,136(sp)
    800066a0:	06913c23          	sd	s1,120(sp)
    800066a4:	07213823          	sd	s2,112(sp)
    800066a8:	07413023          	sd	s4,96(sp)
    800066ac:	05513c23          	sd	s5,88(sp)
    800066b0:	05613823          	sd	s6,80(sp)
    800066b4:	05713423          	sd	s7,72(sp)
    800066b8:	03913c23          	sd	s9,56(sp)
    800066bc:	03a13823          	sd	s10,48(sp)
    800066c0:	03b13423          	sd	s11,40(sp)
    800066c4:	00009317          	auipc	t1,0x9
    800066c8:	1dc30313          	addi	t1,t1,476 # 8000f8a0 <pr>
    800066cc:	01832c03          	lw	s8,24(t1)
    800066d0:	00b43423          	sd	a1,8(s0)
    800066d4:	00c43823          	sd	a2,16(s0)
    800066d8:	00d43c23          	sd	a3,24(s0)
    800066dc:	02e43023          	sd	a4,32(s0)
    800066e0:	02f43423          	sd	a5,40(s0)
    800066e4:	03043823          	sd	a6,48(s0)
    800066e8:	03143c23          	sd	a7,56(s0)
    800066ec:	00050993          	mv	s3,a0
    800066f0:	4a0c1663          	bnez	s8,80006b9c <__printf+0x514>
    800066f4:	60098c63          	beqz	s3,80006d0c <__printf+0x684>
    800066f8:	0009c503          	lbu	a0,0(s3)
    800066fc:	00840793          	addi	a5,s0,8
    80006700:	f6f43c23          	sd	a5,-136(s0)
    80006704:	00000493          	li	s1,0
    80006708:	22050063          	beqz	a0,80006928 <__printf+0x2a0>
    8000670c:	00002a37          	lui	s4,0x2
    80006710:	00018ab7          	lui	s5,0x18
    80006714:	000f4b37          	lui	s6,0xf4
    80006718:	00989bb7          	lui	s7,0x989
    8000671c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80006720:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80006724:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80006728:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000672c:	00148c9b          	addiw	s9,s1,1
    80006730:	02500793          	li	a5,37
    80006734:	01998933          	add	s2,s3,s9
    80006738:	38f51263          	bne	a0,a5,80006abc <__printf+0x434>
    8000673c:	00094783          	lbu	a5,0(s2)
    80006740:	00078c9b          	sext.w	s9,a5
    80006744:	1e078263          	beqz	a5,80006928 <__printf+0x2a0>
    80006748:	0024849b          	addiw	s1,s1,2
    8000674c:	07000713          	li	a4,112
    80006750:	00998933          	add	s2,s3,s1
    80006754:	38e78a63          	beq	a5,a4,80006ae8 <__printf+0x460>
    80006758:	20f76863          	bltu	a4,a5,80006968 <__printf+0x2e0>
    8000675c:	42a78863          	beq	a5,a0,80006b8c <__printf+0x504>
    80006760:	06400713          	li	a4,100
    80006764:	40e79663          	bne	a5,a4,80006b70 <__printf+0x4e8>
    80006768:	f7843783          	ld	a5,-136(s0)
    8000676c:	0007a603          	lw	a2,0(a5)
    80006770:	00878793          	addi	a5,a5,8
    80006774:	f6f43c23          	sd	a5,-136(s0)
    80006778:	42064a63          	bltz	a2,80006bac <__printf+0x524>
    8000677c:	00a00713          	li	a4,10
    80006780:	02e677bb          	remuw	a5,a2,a4
    80006784:	00002d97          	auipc	s11,0x2
    80006788:	ec4d8d93          	addi	s11,s11,-316 # 80008648 <digits>
    8000678c:	00900593          	li	a1,9
    80006790:	0006051b          	sext.w	a0,a2
    80006794:	00000c93          	li	s9,0
    80006798:	02079793          	slli	a5,a5,0x20
    8000679c:	0207d793          	srli	a5,a5,0x20
    800067a0:	00fd87b3          	add	a5,s11,a5
    800067a4:	0007c783          	lbu	a5,0(a5)
    800067a8:	02e656bb          	divuw	a3,a2,a4
    800067ac:	f8f40023          	sb	a5,-128(s0)
    800067b0:	14c5d863          	bge	a1,a2,80006900 <__printf+0x278>
    800067b4:	06300593          	li	a1,99
    800067b8:	00100c93          	li	s9,1
    800067bc:	02e6f7bb          	remuw	a5,a3,a4
    800067c0:	02079793          	slli	a5,a5,0x20
    800067c4:	0207d793          	srli	a5,a5,0x20
    800067c8:	00fd87b3          	add	a5,s11,a5
    800067cc:	0007c783          	lbu	a5,0(a5)
    800067d0:	02e6d73b          	divuw	a4,a3,a4
    800067d4:	f8f400a3          	sb	a5,-127(s0)
    800067d8:	12a5f463          	bgeu	a1,a0,80006900 <__printf+0x278>
    800067dc:	00a00693          	li	a3,10
    800067e0:	00900593          	li	a1,9
    800067e4:	02d777bb          	remuw	a5,a4,a3
    800067e8:	02079793          	slli	a5,a5,0x20
    800067ec:	0207d793          	srli	a5,a5,0x20
    800067f0:	00fd87b3          	add	a5,s11,a5
    800067f4:	0007c503          	lbu	a0,0(a5)
    800067f8:	02d757bb          	divuw	a5,a4,a3
    800067fc:	f8a40123          	sb	a0,-126(s0)
    80006800:	48e5f263          	bgeu	a1,a4,80006c84 <__printf+0x5fc>
    80006804:	06300513          	li	a0,99
    80006808:	02d7f5bb          	remuw	a1,a5,a3
    8000680c:	02059593          	slli	a1,a1,0x20
    80006810:	0205d593          	srli	a1,a1,0x20
    80006814:	00bd85b3          	add	a1,s11,a1
    80006818:	0005c583          	lbu	a1,0(a1)
    8000681c:	02d7d7bb          	divuw	a5,a5,a3
    80006820:	f8b401a3          	sb	a1,-125(s0)
    80006824:	48e57263          	bgeu	a0,a4,80006ca8 <__printf+0x620>
    80006828:	3e700513          	li	a0,999
    8000682c:	02d7f5bb          	remuw	a1,a5,a3
    80006830:	02059593          	slli	a1,a1,0x20
    80006834:	0205d593          	srli	a1,a1,0x20
    80006838:	00bd85b3          	add	a1,s11,a1
    8000683c:	0005c583          	lbu	a1,0(a1)
    80006840:	02d7d7bb          	divuw	a5,a5,a3
    80006844:	f8b40223          	sb	a1,-124(s0)
    80006848:	46e57663          	bgeu	a0,a4,80006cb4 <__printf+0x62c>
    8000684c:	02d7f5bb          	remuw	a1,a5,a3
    80006850:	02059593          	slli	a1,a1,0x20
    80006854:	0205d593          	srli	a1,a1,0x20
    80006858:	00bd85b3          	add	a1,s11,a1
    8000685c:	0005c583          	lbu	a1,0(a1)
    80006860:	02d7d7bb          	divuw	a5,a5,a3
    80006864:	f8b402a3          	sb	a1,-123(s0)
    80006868:	46ea7863          	bgeu	s4,a4,80006cd8 <__printf+0x650>
    8000686c:	02d7f5bb          	remuw	a1,a5,a3
    80006870:	02059593          	slli	a1,a1,0x20
    80006874:	0205d593          	srli	a1,a1,0x20
    80006878:	00bd85b3          	add	a1,s11,a1
    8000687c:	0005c583          	lbu	a1,0(a1)
    80006880:	02d7d7bb          	divuw	a5,a5,a3
    80006884:	f8b40323          	sb	a1,-122(s0)
    80006888:	3eeaf863          	bgeu	s5,a4,80006c78 <__printf+0x5f0>
    8000688c:	02d7f5bb          	remuw	a1,a5,a3
    80006890:	02059593          	slli	a1,a1,0x20
    80006894:	0205d593          	srli	a1,a1,0x20
    80006898:	00bd85b3          	add	a1,s11,a1
    8000689c:	0005c583          	lbu	a1,0(a1)
    800068a0:	02d7d7bb          	divuw	a5,a5,a3
    800068a4:	f8b403a3          	sb	a1,-121(s0)
    800068a8:	42eb7e63          	bgeu	s6,a4,80006ce4 <__printf+0x65c>
    800068ac:	02d7f5bb          	remuw	a1,a5,a3
    800068b0:	02059593          	slli	a1,a1,0x20
    800068b4:	0205d593          	srli	a1,a1,0x20
    800068b8:	00bd85b3          	add	a1,s11,a1
    800068bc:	0005c583          	lbu	a1,0(a1)
    800068c0:	02d7d7bb          	divuw	a5,a5,a3
    800068c4:	f8b40423          	sb	a1,-120(s0)
    800068c8:	42ebfc63          	bgeu	s7,a4,80006d00 <__printf+0x678>
    800068cc:	02079793          	slli	a5,a5,0x20
    800068d0:	0207d793          	srli	a5,a5,0x20
    800068d4:	00fd8db3          	add	s11,s11,a5
    800068d8:	000dc703          	lbu	a4,0(s11)
    800068dc:	00a00793          	li	a5,10
    800068e0:	00900c93          	li	s9,9
    800068e4:	f8e404a3          	sb	a4,-119(s0)
    800068e8:	00065c63          	bgez	a2,80006900 <__printf+0x278>
    800068ec:	f9040713          	addi	a4,s0,-112
    800068f0:	00f70733          	add	a4,a4,a5
    800068f4:	02d00693          	li	a3,45
    800068f8:	fed70823          	sb	a3,-16(a4)
    800068fc:	00078c93          	mv	s9,a5
    80006900:	f8040793          	addi	a5,s0,-128
    80006904:	01978cb3          	add	s9,a5,s9
    80006908:	f7f40d13          	addi	s10,s0,-129
    8000690c:	000cc503          	lbu	a0,0(s9)
    80006910:	fffc8c93          	addi	s9,s9,-1
    80006914:	00000097          	auipc	ra,0x0
    80006918:	b90080e7          	jalr	-1136(ra) # 800064a4 <consputc>
    8000691c:	ffac98e3          	bne	s9,s10,8000690c <__printf+0x284>
    80006920:	00094503          	lbu	a0,0(s2)
    80006924:	e00514e3          	bnez	a0,8000672c <__printf+0xa4>
    80006928:	1a0c1663          	bnez	s8,80006ad4 <__printf+0x44c>
    8000692c:	08813083          	ld	ra,136(sp)
    80006930:	08013403          	ld	s0,128(sp)
    80006934:	07813483          	ld	s1,120(sp)
    80006938:	07013903          	ld	s2,112(sp)
    8000693c:	06813983          	ld	s3,104(sp)
    80006940:	06013a03          	ld	s4,96(sp)
    80006944:	05813a83          	ld	s5,88(sp)
    80006948:	05013b03          	ld	s6,80(sp)
    8000694c:	04813b83          	ld	s7,72(sp)
    80006950:	04013c03          	ld	s8,64(sp)
    80006954:	03813c83          	ld	s9,56(sp)
    80006958:	03013d03          	ld	s10,48(sp)
    8000695c:	02813d83          	ld	s11,40(sp)
    80006960:	0d010113          	addi	sp,sp,208
    80006964:	00008067          	ret
    80006968:	07300713          	li	a4,115
    8000696c:	1ce78a63          	beq	a5,a4,80006b40 <__printf+0x4b8>
    80006970:	07800713          	li	a4,120
    80006974:	1ee79e63          	bne	a5,a4,80006b70 <__printf+0x4e8>
    80006978:	f7843783          	ld	a5,-136(s0)
    8000697c:	0007a703          	lw	a4,0(a5)
    80006980:	00878793          	addi	a5,a5,8
    80006984:	f6f43c23          	sd	a5,-136(s0)
    80006988:	28074263          	bltz	a4,80006c0c <__printf+0x584>
    8000698c:	00002d97          	auipc	s11,0x2
    80006990:	cbcd8d93          	addi	s11,s11,-836 # 80008648 <digits>
    80006994:	00f77793          	andi	a5,a4,15
    80006998:	00fd87b3          	add	a5,s11,a5
    8000699c:	0007c683          	lbu	a3,0(a5)
    800069a0:	00f00613          	li	a2,15
    800069a4:	0007079b          	sext.w	a5,a4
    800069a8:	f8d40023          	sb	a3,-128(s0)
    800069ac:	0047559b          	srliw	a1,a4,0x4
    800069b0:	0047569b          	srliw	a3,a4,0x4
    800069b4:	00000c93          	li	s9,0
    800069b8:	0ee65063          	bge	a2,a4,80006a98 <__printf+0x410>
    800069bc:	00f6f693          	andi	a3,a3,15
    800069c0:	00dd86b3          	add	a3,s11,a3
    800069c4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800069c8:	0087d79b          	srliw	a5,a5,0x8
    800069cc:	00100c93          	li	s9,1
    800069d0:	f8d400a3          	sb	a3,-127(s0)
    800069d4:	0cb67263          	bgeu	a2,a1,80006a98 <__printf+0x410>
    800069d8:	00f7f693          	andi	a3,a5,15
    800069dc:	00dd86b3          	add	a3,s11,a3
    800069e0:	0006c583          	lbu	a1,0(a3)
    800069e4:	00f00613          	li	a2,15
    800069e8:	0047d69b          	srliw	a3,a5,0x4
    800069ec:	f8b40123          	sb	a1,-126(s0)
    800069f0:	0047d593          	srli	a1,a5,0x4
    800069f4:	28f67e63          	bgeu	a2,a5,80006c90 <__printf+0x608>
    800069f8:	00f6f693          	andi	a3,a3,15
    800069fc:	00dd86b3          	add	a3,s11,a3
    80006a00:	0006c503          	lbu	a0,0(a3)
    80006a04:	0087d813          	srli	a6,a5,0x8
    80006a08:	0087d69b          	srliw	a3,a5,0x8
    80006a0c:	f8a401a3          	sb	a0,-125(s0)
    80006a10:	28b67663          	bgeu	a2,a1,80006c9c <__printf+0x614>
    80006a14:	00f6f693          	andi	a3,a3,15
    80006a18:	00dd86b3          	add	a3,s11,a3
    80006a1c:	0006c583          	lbu	a1,0(a3)
    80006a20:	00c7d513          	srli	a0,a5,0xc
    80006a24:	00c7d69b          	srliw	a3,a5,0xc
    80006a28:	f8b40223          	sb	a1,-124(s0)
    80006a2c:	29067a63          	bgeu	a2,a6,80006cc0 <__printf+0x638>
    80006a30:	00f6f693          	andi	a3,a3,15
    80006a34:	00dd86b3          	add	a3,s11,a3
    80006a38:	0006c583          	lbu	a1,0(a3)
    80006a3c:	0107d813          	srli	a6,a5,0x10
    80006a40:	0107d69b          	srliw	a3,a5,0x10
    80006a44:	f8b402a3          	sb	a1,-123(s0)
    80006a48:	28a67263          	bgeu	a2,a0,80006ccc <__printf+0x644>
    80006a4c:	00f6f693          	andi	a3,a3,15
    80006a50:	00dd86b3          	add	a3,s11,a3
    80006a54:	0006c683          	lbu	a3,0(a3)
    80006a58:	0147d79b          	srliw	a5,a5,0x14
    80006a5c:	f8d40323          	sb	a3,-122(s0)
    80006a60:	21067663          	bgeu	a2,a6,80006c6c <__printf+0x5e4>
    80006a64:	02079793          	slli	a5,a5,0x20
    80006a68:	0207d793          	srli	a5,a5,0x20
    80006a6c:	00fd8db3          	add	s11,s11,a5
    80006a70:	000dc683          	lbu	a3,0(s11)
    80006a74:	00800793          	li	a5,8
    80006a78:	00700c93          	li	s9,7
    80006a7c:	f8d403a3          	sb	a3,-121(s0)
    80006a80:	00075c63          	bgez	a4,80006a98 <__printf+0x410>
    80006a84:	f9040713          	addi	a4,s0,-112
    80006a88:	00f70733          	add	a4,a4,a5
    80006a8c:	02d00693          	li	a3,45
    80006a90:	fed70823          	sb	a3,-16(a4)
    80006a94:	00078c93          	mv	s9,a5
    80006a98:	f8040793          	addi	a5,s0,-128
    80006a9c:	01978cb3          	add	s9,a5,s9
    80006aa0:	f7f40d13          	addi	s10,s0,-129
    80006aa4:	000cc503          	lbu	a0,0(s9)
    80006aa8:	fffc8c93          	addi	s9,s9,-1
    80006aac:	00000097          	auipc	ra,0x0
    80006ab0:	9f8080e7          	jalr	-1544(ra) # 800064a4 <consputc>
    80006ab4:	ff9d18e3          	bne	s10,s9,80006aa4 <__printf+0x41c>
    80006ab8:	0100006f          	j	80006ac8 <__printf+0x440>
    80006abc:	00000097          	auipc	ra,0x0
    80006ac0:	9e8080e7          	jalr	-1560(ra) # 800064a4 <consputc>
    80006ac4:	000c8493          	mv	s1,s9
    80006ac8:	00094503          	lbu	a0,0(s2)
    80006acc:	c60510e3          	bnez	a0,8000672c <__printf+0xa4>
    80006ad0:	e40c0ee3          	beqz	s8,8000692c <__printf+0x2a4>
    80006ad4:	00009517          	auipc	a0,0x9
    80006ad8:	dcc50513          	addi	a0,a0,-564 # 8000f8a0 <pr>
    80006adc:	00001097          	auipc	ra,0x1
    80006ae0:	94c080e7          	jalr	-1716(ra) # 80007428 <release>
    80006ae4:	e49ff06f          	j	8000692c <__printf+0x2a4>
    80006ae8:	f7843783          	ld	a5,-136(s0)
    80006aec:	03000513          	li	a0,48
    80006af0:	01000d13          	li	s10,16
    80006af4:	00878713          	addi	a4,a5,8
    80006af8:	0007bc83          	ld	s9,0(a5)
    80006afc:	f6e43c23          	sd	a4,-136(s0)
    80006b00:	00000097          	auipc	ra,0x0
    80006b04:	9a4080e7          	jalr	-1628(ra) # 800064a4 <consputc>
    80006b08:	07800513          	li	a0,120
    80006b0c:	00000097          	auipc	ra,0x0
    80006b10:	998080e7          	jalr	-1640(ra) # 800064a4 <consputc>
    80006b14:	00002d97          	auipc	s11,0x2
    80006b18:	b34d8d93          	addi	s11,s11,-1228 # 80008648 <digits>
    80006b1c:	03ccd793          	srli	a5,s9,0x3c
    80006b20:	00fd87b3          	add	a5,s11,a5
    80006b24:	0007c503          	lbu	a0,0(a5)
    80006b28:	fffd0d1b          	addiw	s10,s10,-1
    80006b2c:	004c9c93          	slli	s9,s9,0x4
    80006b30:	00000097          	auipc	ra,0x0
    80006b34:	974080e7          	jalr	-1676(ra) # 800064a4 <consputc>
    80006b38:	fe0d12e3          	bnez	s10,80006b1c <__printf+0x494>
    80006b3c:	f8dff06f          	j	80006ac8 <__printf+0x440>
    80006b40:	f7843783          	ld	a5,-136(s0)
    80006b44:	0007bc83          	ld	s9,0(a5)
    80006b48:	00878793          	addi	a5,a5,8
    80006b4c:	f6f43c23          	sd	a5,-136(s0)
    80006b50:	000c9a63          	bnez	s9,80006b64 <__printf+0x4dc>
    80006b54:	1080006f          	j	80006c5c <__printf+0x5d4>
    80006b58:	001c8c93          	addi	s9,s9,1
    80006b5c:	00000097          	auipc	ra,0x0
    80006b60:	948080e7          	jalr	-1720(ra) # 800064a4 <consputc>
    80006b64:	000cc503          	lbu	a0,0(s9)
    80006b68:	fe0518e3          	bnez	a0,80006b58 <__printf+0x4d0>
    80006b6c:	f5dff06f          	j	80006ac8 <__printf+0x440>
    80006b70:	02500513          	li	a0,37
    80006b74:	00000097          	auipc	ra,0x0
    80006b78:	930080e7          	jalr	-1744(ra) # 800064a4 <consputc>
    80006b7c:	000c8513          	mv	a0,s9
    80006b80:	00000097          	auipc	ra,0x0
    80006b84:	924080e7          	jalr	-1756(ra) # 800064a4 <consputc>
    80006b88:	f41ff06f          	j	80006ac8 <__printf+0x440>
    80006b8c:	02500513          	li	a0,37
    80006b90:	00000097          	auipc	ra,0x0
    80006b94:	914080e7          	jalr	-1772(ra) # 800064a4 <consputc>
    80006b98:	f31ff06f          	j	80006ac8 <__printf+0x440>
    80006b9c:	00030513          	mv	a0,t1
    80006ba0:	00000097          	auipc	ra,0x0
    80006ba4:	7bc080e7          	jalr	1980(ra) # 8000735c <acquire>
    80006ba8:	b4dff06f          	j	800066f4 <__printf+0x6c>
    80006bac:	40c0053b          	negw	a0,a2
    80006bb0:	00a00713          	li	a4,10
    80006bb4:	02e576bb          	remuw	a3,a0,a4
    80006bb8:	00002d97          	auipc	s11,0x2
    80006bbc:	a90d8d93          	addi	s11,s11,-1392 # 80008648 <digits>
    80006bc0:	ff700593          	li	a1,-9
    80006bc4:	02069693          	slli	a3,a3,0x20
    80006bc8:	0206d693          	srli	a3,a3,0x20
    80006bcc:	00dd86b3          	add	a3,s11,a3
    80006bd0:	0006c683          	lbu	a3,0(a3)
    80006bd4:	02e557bb          	divuw	a5,a0,a4
    80006bd8:	f8d40023          	sb	a3,-128(s0)
    80006bdc:	10b65e63          	bge	a2,a1,80006cf8 <__printf+0x670>
    80006be0:	06300593          	li	a1,99
    80006be4:	02e7f6bb          	remuw	a3,a5,a4
    80006be8:	02069693          	slli	a3,a3,0x20
    80006bec:	0206d693          	srli	a3,a3,0x20
    80006bf0:	00dd86b3          	add	a3,s11,a3
    80006bf4:	0006c683          	lbu	a3,0(a3)
    80006bf8:	02e7d73b          	divuw	a4,a5,a4
    80006bfc:	00200793          	li	a5,2
    80006c00:	f8d400a3          	sb	a3,-127(s0)
    80006c04:	bca5ece3          	bltu	a1,a0,800067dc <__printf+0x154>
    80006c08:	ce5ff06f          	j	800068ec <__printf+0x264>
    80006c0c:	40e007bb          	negw	a5,a4
    80006c10:	00002d97          	auipc	s11,0x2
    80006c14:	a38d8d93          	addi	s11,s11,-1480 # 80008648 <digits>
    80006c18:	00f7f693          	andi	a3,a5,15
    80006c1c:	00dd86b3          	add	a3,s11,a3
    80006c20:	0006c583          	lbu	a1,0(a3)
    80006c24:	ff100613          	li	a2,-15
    80006c28:	0047d69b          	srliw	a3,a5,0x4
    80006c2c:	f8b40023          	sb	a1,-128(s0)
    80006c30:	0047d59b          	srliw	a1,a5,0x4
    80006c34:	0ac75e63          	bge	a4,a2,80006cf0 <__printf+0x668>
    80006c38:	00f6f693          	andi	a3,a3,15
    80006c3c:	00dd86b3          	add	a3,s11,a3
    80006c40:	0006c603          	lbu	a2,0(a3)
    80006c44:	00f00693          	li	a3,15
    80006c48:	0087d79b          	srliw	a5,a5,0x8
    80006c4c:	f8c400a3          	sb	a2,-127(s0)
    80006c50:	d8b6e4e3          	bltu	a3,a1,800069d8 <__printf+0x350>
    80006c54:	00200793          	li	a5,2
    80006c58:	e2dff06f          	j	80006a84 <__printf+0x3fc>
    80006c5c:	00002c97          	auipc	s9,0x2
    80006c60:	9ccc8c93          	addi	s9,s9,-1588 # 80008628 <CONSOLE_STATUS+0x618>
    80006c64:	02800513          	li	a0,40
    80006c68:	ef1ff06f          	j	80006b58 <__printf+0x4d0>
    80006c6c:	00700793          	li	a5,7
    80006c70:	00600c93          	li	s9,6
    80006c74:	e0dff06f          	j	80006a80 <__printf+0x3f8>
    80006c78:	00700793          	li	a5,7
    80006c7c:	00600c93          	li	s9,6
    80006c80:	c69ff06f          	j	800068e8 <__printf+0x260>
    80006c84:	00300793          	li	a5,3
    80006c88:	00200c93          	li	s9,2
    80006c8c:	c5dff06f          	j	800068e8 <__printf+0x260>
    80006c90:	00300793          	li	a5,3
    80006c94:	00200c93          	li	s9,2
    80006c98:	de9ff06f          	j	80006a80 <__printf+0x3f8>
    80006c9c:	00400793          	li	a5,4
    80006ca0:	00300c93          	li	s9,3
    80006ca4:	dddff06f          	j	80006a80 <__printf+0x3f8>
    80006ca8:	00400793          	li	a5,4
    80006cac:	00300c93          	li	s9,3
    80006cb0:	c39ff06f          	j	800068e8 <__printf+0x260>
    80006cb4:	00500793          	li	a5,5
    80006cb8:	00400c93          	li	s9,4
    80006cbc:	c2dff06f          	j	800068e8 <__printf+0x260>
    80006cc0:	00500793          	li	a5,5
    80006cc4:	00400c93          	li	s9,4
    80006cc8:	db9ff06f          	j	80006a80 <__printf+0x3f8>
    80006ccc:	00600793          	li	a5,6
    80006cd0:	00500c93          	li	s9,5
    80006cd4:	dadff06f          	j	80006a80 <__printf+0x3f8>
    80006cd8:	00600793          	li	a5,6
    80006cdc:	00500c93          	li	s9,5
    80006ce0:	c09ff06f          	j	800068e8 <__printf+0x260>
    80006ce4:	00800793          	li	a5,8
    80006ce8:	00700c93          	li	s9,7
    80006cec:	bfdff06f          	j	800068e8 <__printf+0x260>
    80006cf0:	00100793          	li	a5,1
    80006cf4:	d91ff06f          	j	80006a84 <__printf+0x3fc>
    80006cf8:	00100793          	li	a5,1
    80006cfc:	bf1ff06f          	j	800068ec <__printf+0x264>
    80006d00:	00900793          	li	a5,9
    80006d04:	00800c93          	li	s9,8
    80006d08:	be1ff06f          	j	800068e8 <__printf+0x260>
    80006d0c:	00002517          	auipc	a0,0x2
    80006d10:	92450513          	addi	a0,a0,-1756 # 80008630 <CONSOLE_STATUS+0x620>
    80006d14:	00000097          	auipc	ra,0x0
    80006d18:	918080e7          	jalr	-1768(ra) # 8000662c <panic>

0000000080006d1c <printfinit>:
    80006d1c:	fe010113          	addi	sp,sp,-32
    80006d20:	00813823          	sd	s0,16(sp)
    80006d24:	00913423          	sd	s1,8(sp)
    80006d28:	00113c23          	sd	ra,24(sp)
    80006d2c:	02010413          	addi	s0,sp,32
    80006d30:	00009497          	auipc	s1,0x9
    80006d34:	b7048493          	addi	s1,s1,-1168 # 8000f8a0 <pr>
    80006d38:	00048513          	mv	a0,s1
    80006d3c:	00002597          	auipc	a1,0x2
    80006d40:	90458593          	addi	a1,a1,-1788 # 80008640 <CONSOLE_STATUS+0x630>
    80006d44:	00000097          	auipc	ra,0x0
    80006d48:	5f4080e7          	jalr	1524(ra) # 80007338 <initlock>
    80006d4c:	01813083          	ld	ra,24(sp)
    80006d50:	01013403          	ld	s0,16(sp)
    80006d54:	0004ac23          	sw	zero,24(s1)
    80006d58:	00813483          	ld	s1,8(sp)
    80006d5c:	02010113          	addi	sp,sp,32
    80006d60:	00008067          	ret

0000000080006d64 <uartinit>:
    80006d64:	ff010113          	addi	sp,sp,-16
    80006d68:	00813423          	sd	s0,8(sp)
    80006d6c:	01010413          	addi	s0,sp,16
    80006d70:	100007b7          	lui	a5,0x10000
    80006d74:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80006d78:	f8000713          	li	a4,-128
    80006d7c:	00e781a3          	sb	a4,3(a5)
    80006d80:	00300713          	li	a4,3
    80006d84:	00e78023          	sb	a4,0(a5)
    80006d88:	000780a3          	sb	zero,1(a5)
    80006d8c:	00e781a3          	sb	a4,3(a5)
    80006d90:	00700693          	li	a3,7
    80006d94:	00d78123          	sb	a3,2(a5)
    80006d98:	00e780a3          	sb	a4,1(a5)
    80006d9c:	00813403          	ld	s0,8(sp)
    80006da0:	01010113          	addi	sp,sp,16
    80006da4:	00008067          	ret

0000000080006da8 <uartputc>:
    80006da8:	00003797          	auipc	a5,0x3
    80006dac:	7f07a783          	lw	a5,2032(a5) # 8000a598 <panicked>
    80006db0:	00078463          	beqz	a5,80006db8 <uartputc+0x10>
    80006db4:	0000006f          	j	80006db4 <uartputc+0xc>
    80006db8:	fd010113          	addi	sp,sp,-48
    80006dbc:	02813023          	sd	s0,32(sp)
    80006dc0:	00913c23          	sd	s1,24(sp)
    80006dc4:	01213823          	sd	s2,16(sp)
    80006dc8:	01313423          	sd	s3,8(sp)
    80006dcc:	02113423          	sd	ra,40(sp)
    80006dd0:	03010413          	addi	s0,sp,48
    80006dd4:	00003917          	auipc	s2,0x3
    80006dd8:	7cc90913          	addi	s2,s2,1996 # 8000a5a0 <uart_tx_r>
    80006ddc:	00093783          	ld	a5,0(s2)
    80006de0:	00003497          	auipc	s1,0x3
    80006de4:	7c848493          	addi	s1,s1,1992 # 8000a5a8 <uart_tx_w>
    80006de8:	0004b703          	ld	a4,0(s1)
    80006dec:	02078693          	addi	a3,a5,32
    80006df0:	00050993          	mv	s3,a0
    80006df4:	02e69c63          	bne	a3,a4,80006e2c <uartputc+0x84>
    80006df8:	00001097          	auipc	ra,0x1
    80006dfc:	834080e7          	jalr	-1996(ra) # 8000762c <push_on>
    80006e00:	00093783          	ld	a5,0(s2)
    80006e04:	0004b703          	ld	a4,0(s1)
    80006e08:	02078793          	addi	a5,a5,32
    80006e0c:	00e79463          	bne	a5,a4,80006e14 <uartputc+0x6c>
    80006e10:	0000006f          	j	80006e10 <uartputc+0x68>
    80006e14:	00001097          	auipc	ra,0x1
    80006e18:	88c080e7          	jalr	-1908(ra) # 800076a0 <pop_on>
    80006e1c:	00093783          	ld	a5,0(s2)
    80006e20:	0004b703          	ld	a4,0(s1)
    80006e24:	02078693          	addi	a3,a5,32
    80006e28:	fce688e3          	beq	a3,a4,80006df8 <uartputc+0x50>
    80006e2c:	01f77693          	andi	a3,a4,31
    80006e30:	00009597          	auipc	a1,0x9
    80006e34:	a9058593          	addi	a1,a1,-1392 # 8000f8c0 <uart_tx_buf>
    80006e38:	00d586b3          	add	a3,a1,a3
    80006e3c:	00170713          	addi	a4,a4,1
    80006e40:	01368023          	sb	s3,0(a3)
    80006e44:	00e4b023          	sd	a4,0(s1)
    80006e48:	10000637          	lui	a2,0x10000
    80006e4c:	02f71063          	bne	a4,a5,80006e6c <uartputc+0xc4>
    80006e50:	0340006f          	j	80006e84 <uartputc+0xdc>
    80006e54:	00074703          	lbu	a4,0(a4)
    80006e58:	00f93023          	sd	a5,0(s2)
    80006e5c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80006e60:	00093783          	ld	a5,0(s2)
    80006e64:	0004b703          	ld	a4,0(s1)
    80006e68:	00f70e63          	beq	a4,a5,80006e84 <uartputc+0xdc>
    80006e6c:	00564683          	lbu	a3,5(a2)
    80006e70:	01f7f713          	andi	a4,a5,31
    80006e74:	00e58733          	add	a4,a1,a4
    80006e78:	0206f693          	andi	a3,a3,32
    80006e7c:	00178793          	addi	a5,a5,1
    80006e80:	fc069ae3          	bnez	a3,80006e54 <uartputc+0xac>
    80006e84:	02813083          	ld	ra,40(sp)
    80006e88:	02013403          	ld	s0,32(sp)
    80006e8c:	01813483          	ld	s1,24(sp)
    80006e90:	01013903          	ld	s2,16(sp)
    80006e94:	00813983          	ld	s3,8(sp)
    80006e98:	03010113          	addi	sp,sp,48
    80006e9c:	00008067          	ret

0000000080006ea0 <uartputc_sync>:
    80006ea0:	ff010113          	addi	sp,sp,-16
    80006ea4:	00813423          	sd	s0,8(sp)
    80006ea8:	01010413          	addi	s0,sp,16
    80006eac:	00003717          	auipc	a4,0x3
    80006eb0:	6ec72703          	lw	a4,1772(a4) # 8000a598 <panicked>
    80006eb4:	02071663          	bnez	a4,80006ee0 <uartputc_sync+0x40>
    80006eb8:	00050793          	mv	a5,a0
    80006ebc:	100006b7          	lui	a3,0x10000
    80006ec0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80006ec4:	02077713          	andi	a4,a4,32
    80006ec8:	fe070ce3          	beqz	a4,80006ec0 <uartputc_sync+0x20>
    80006ecc:	0ff7f793          	andi	a5,a5,255
    80006ed0:	00f68023          	sb	a5,0(a3)
    80006ed4:	00813403          	ld	s0,8(sp)
    80006ed8:	01010113          	addi	sp,sp,16
    80006edc:	00008067          	ret
    80006ee0:	0000006f          	j	80006ee0 <uartputc_sync+0x40>

0000000080006ee4 <uartstart>:
    80006ee4:	ff010113          	addi	sp,sp,-16
    80006ee8:	00813423          	sd	s0,8(sp)
    80006eec:	01010413          	addi	s0,sp,16
    80006ef0:	00003617          	auipc	a2,0x3
    80006ef4:	6b060613          	addi	a2,a2,1712 # 8000a5a0 <uart_tx_r>
    80006ef8:	00003517          	auipc	a0,0x3
    80006efc:	6b050513          	addi	a0,a0,1712 # 8000a5a8 <uart_tx_w>
    80006f00:	00063783          	ld	a5,0(a2)
    80006f04:	00053703          	ld	a4,0(a0)
    80006f08:	04f70263          	beq	a4,a5,80006f4c <uartstart+0x68>
    80006f0c:	100005b7          	lui	a1,0x10000
    80006f10:	00009817          	auipc	a6,0x9
    80006f14:	9b080813          	addi	a6,a6,-1616 # 8000f8c0 <uart_tx_buf>
    80006f18:	01c0006f          	j	80006f34 <uartstart+0x50>
    80006f1c:	0006c703          	lbu	a4,0(a3)
    80006f20:	00f63023          	sd	a5,0(a2)
    80006f24:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80006f28:	00063783          	ld	a5,0(a2)
    80006f2c:	00053703          	ld	a4,0(a0)
    80006f30:	00f70e63          	beq	a4,a5,80006f4c <uartstart+0x68>
    80006f34:	01f7f713          	andi	a4,a5,31
    80006f38:	00e806b3          	add	a3,a6,a4
    80006f3c:	0055c703          	lbu	a4,5(a1)
    80006f40:	00178793          	addi	a5,a5,1
    80006f44:	02077713          	andi	a4,a4,32
    80006f48:	fc071ae3          	bnez	a4,80006f1c <uartstart+0x38>
    80006f4c:	00813403          	ld	s0,8(sp)
    80006f50:	01010113          	addi	sp,sp,16
    80006f54:	00008067          	ret

0000000080006f58 <uartgetc>:
    80006f58:	ff010113          	addi	sp,sp,-16
    80006f5c:	00813423          	sd	s0,8(sp)
    80006f60:	01010413          	addi	s0,sp,16
    80006f64:	10000737          	lui	a4,0x10000
    80006f68:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80006f6c:	0017f793          	andi	a5,a5,1
    80006f70:	00078c63          	beqz	a5,80006f88 <uartgetc+0x30>
    80006f74:	00074503          	lbu	a0,0(a4)
    80006f78:	0ff57513          	andi	a0,a0,255
    80006f7c:	00813403          	ld	s0,8(sp)
    80006f80:	01010113          	addi	sp,sp,16
    80006f84:	00008067          	ret
    80006f88:	fff00513          	li	a0,-1
    80006f8c:	ff1ff06f          	j	80006f7c <uartgetc+0x24>

0000000080006f90 <uartintr>:
    80006f90:	100007b7          	lui	a5,0x10000
    80006f94:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80006f98:	0017f793          	andi	a5,a5,1
    80006f9c:	0a078463          	beqz	a5,80007044 <uartintr+0xb4>
    80006fa0:	fe010113          	addi	sp,sp,-32
    80006fa4:	00813823          	sd	s0,16(sp)
    80006fa8:	00913423          	sd	s1,8(sp)
    80006fac:	00113c23          	sd	ra,24(sp)
    80006fb0:	02010413          	addi	s0,sp,32
    80006fb4:	100004b7          	lui	s1,0x10000
    80006fb8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80006fbc:	0ff57513          	andi	a0,a0,255
    80006fc0:	fffff097          	auipc	ra,0xfffff
    80006fc4:	534080e7          	jalr	1332(ra) # 800064f4 <consoleintr>
    80006fc8:	0054c783          	lbu	a5,5(s1)
    80006fcc:	0017f793          	andi	a5,a5,1
    80006fd0:	fe0794e3          	bnez	a5,80006fb8 <uartintr+0x28>
    80006fd4:	00003617          	auipc	a2,0x3
    80006fd8:	5cc60613          	addi	a2,a2,1484 # 8000a5a0 <uart_tx_r>
    80006fdc:	00003517          	auipc	a0,0x3
    80006fe0:	5cc50513          	addi	a0,a0,1484 # 8000a5a8 <uart_tx_w>
    80006fe4:	00063783          	ld	a5,0(a2)
    80006fe8:	00053703          	ld	a4,0(a0)
    80006fec:	04f70263          	beq	a4,a5,80007030 <uartintr+0xa0>
    80006ff0:	100005b7          	lui	a1,0x10000
    80006ff4:	00009817          	auipc	a6,0x9
    80006ff8:	8cc80813          	addi	a6,a6,-1844 # 8000f8c0 <uart_tx_buf>
    80006ffc:	01c0006f          	j	80007018 <uartintr+0x88>
    80007000:	0006c703          	lbu	a4,0(a3)
    80007004:	00f63023          	sd	a5,0(a2)
    80007008:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000700c:	00063783          	ld	a5,0(a2)
    80007010:	00053703          	ld	a4,0(a0)
    80007014:	00f70e63          	beq	a4,a5,80007030 <uartintr+0xa0>
    80007018:	01f7f713          	andi	a4,a5,31
    8000701c:	00e806b3          	add	a3,a6,a4
    80007020:	0055c703          	lbu	a4,5(a1)
    80007024:	00178793          	addi	a5,a5,1
    80007028:	02077713          	andi	a4,a4,32
    8000702c:	fc071ae3          	bnez	a4,80007000 <uartintr+0x70>
    80007030:	01813083          	ld	ra,24(sp)
    80007034:	01013403          	ld	s0,16(sp)
    80007038:	00813483          	ld	s1,8(sp)
    8000703c:	02010113          	addi	sp,sp,32
    80007040:	00008067          	ret
    80007044:	00003617          	auipc	a2,0x3
    80007048:	55c60613          	addi	a2,a2,1372 # 8000a5a0 <uart_tx_r>
    8000704c:	00003517          	auipc	a0,0x3
    80007050:	55c50513          	addi	a0,a0,1372 # 8000a5a8 <uart_tx_w>
    80007054:	00063783          	ld	a5,0(a2)
    80007058:	00053703          	ld	a4,0(a0)
    8000705c:	04f70263          	beq	a4,a5,800070a0 <uartintr+0x110>
    80007060:	100005b7          	lui	a1,0x10000
    80007064:	00009817          	auipc	a6,0x9
    80007068:	85c80813          	addi	a6,a6,-1956 # 8000f8c0 <uart_tx_buf>
    8000706c:	01c0006f          	j	80007088 <uartintr+0xf8>
    80007070:	0006c703          	lbu	a4,0(a3)
    80007074:	00f63023          	sd	a5,0(a2)
    80007078:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000707c:	00063783          	ld	a5,0(a2)
    80007080:	00053703          	ld	a4,0(a0)
    80007084:	02f70063          	beq	a4,a5,800070a4 <uartintr+0x114>
    80007088:	01f7f713          	andi	a4,a5,31
    8000708c:	00e806b3          	add	a3,a6,a4
    80007090:	0055c703          	lbu	a4,5(a1)
    80007094:	00178793          	addi	a5,a5,1
    80007098:	02077713          	andi	a4,a4,32
    8000709c:	fc071ae3          	bnez	a4,80007070 <uartintr+0xe0>
    800070a0:	00008067          	ret
    800070a4:	00008067          	ret

00000000800070a8 <kinit>:
    800070a8:	fc010113          	addi	sp,sp,-64
    800070ac:	02913423          	sd	s1,40(sp)
    800070b0:	fffff7b7          	lui	a5,0xfffff
    800070b4:	0000a497          	auipc	s1,0xa
    800070b8:	82b48493          	addi	s1,s1,-2005 # 800108df <end+0xfff>
    800070bc:	02813823          	sd	s0,48(sp)
    800070c0:	01313c23          	sd	s3,24(sp)
    800070c4:	00f4f4b3          	and	s1,s1,a5
    800070c8:	02113c23          	sd	ra,56(sp)
    800070cc:	03213023          	sd	s2,32(sp)
    800070d0:	01413823          	sd	s4,16(sp)
    800070d4:	01513423          	sd	s5,8(sp)
    800070d8:	04010413          	addi	s0,sp,64
    800070dc:	000017b7          	lui	a5,0x1
    800070e0:	01100993          	li	s3,17
    800070e4:	00f487b3          	add	a5,s1,a5
    800070e8:	01b99993          	slli	s3,s3,0x1b
    800070ec:	06f9e063          	bltu	s3,a5,8000714c <kinit+0xa4>
    800070f0:	00008a97          	auipc	s5,0x8
    800070f4:	7f0a8a93          	addi	s5,s5,2032 # 8000f8e0 <end>
    800070f8:	0754ec63          	bltu	s1,s5,80007170 <kinit+0xc8>
    800070fc:	0734fa63          	bgeu	s1,s3,80007170 <kinit+0xc8>
    80007100:	00088a37          	lui	s4,0x88
    80007104:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007108:	00003917          	auipc	s2,0x3
    8000710c:	4a890913          	addi	s2,s2,1192 # 8000a5b0 <kmem>
    80007110:	00ca1a13          	slli	s4,s4,0xc
    80007114:	0140006f          	j	80007128 <kinit+0x80>
    80007118:	000017b7          	lui	a5,0x1
    8000711c:	00f484b3          	add	s1,s1,a5
    80007120:	0554e863          	bltu	s1,s5,80007170 <kinit+0xc8>
    80007124:	0534f663          	bgeu	s1,s3,80007170 <kinit+0xc8>
    80007128:	00001637          	lui	a2,0x1
    8000712c:	00100593          	li	a1,1
    80007130:	00048513          	mv	a0,s1
    80007134:	00000097          	auipc	ra,0x0
    80007138:	5e4080e7          	jalr	1508(ra) # 80007718 <__memset>
    8000713c:	00093783          	ld	a5,0(s2)
    80007140:	00f4b023          	sd	a5,0(s1)
    80007144:	00993023          	sd	s1,0(s2)
    80007148:	fd4498e3          	bne	s1,s4,80007118 <kinit+0x70>
    8000714c:	03813083          	ld	ra,56(sp)
    80007150:	03013403          	ld	s0,48(sp)
    80007154:	02813483          	ld	s1,40(sp)
    80007158:	02013903          	ld	s2,32(sp)
    8000715c:	01813983          	ld	s3,24(sp)
    80007160:	01013a03          	ld	s4,16(sp)
    80007164:	00813a83          	ld	s5,8(sp)
    80007168:	04010113          	addi	sp,sp,64
    8000716c:	00008067          	ret
    80007170:	00001517          	auipc	a0,0x1
    80007174:	4f050513          	addi	a0,a0,1264 # 80008660 <digits+0x18>
    80007178:	fffff097          	auipc	ra,0xfffff
    8000717c:	4b4080e7          	jalr	1204(ra) # 8000662c <panic>

0000000080007180 <freerange>:
    80007180:	fc010113          	addi	sp,sp,-64
    80007184:	000017b7          	lui	a5,0x1
    80007188:	02913423          	sd	s1,40(sp)
    8000718c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007190:	009504b3          	add	s1,a0,s1
    80007194:	fffff537          	lui	a0,0xfffff
    80007198:	02813823          	sd	s0,48(sp)
    8000719c:	02113c23          	sd	ra,56(sp)
    800071a0:	03213023          	sd	s2,32(sp)
    800071a4:	01313c23          	sd	s3,24(sp)
    800071a8:	01413823          	sd	s4,16(sp)
    800071ac:	01513423          	sd	s5,8(sp)
    800071b0:	01613023          	sd	s6,0(sp)
    800071b4:	04010413          	addi	s0,sp,64
    800071b8:	00a4f4b3          	and	s1,s1,a0
    800071bc:	00f487b3          	add	a5,s1,a5
    800071c0:	06f5e463          	bltu	a1,a5,80007228 <freerange+0xa8>
    800071c4:	00008a97          	auipc	s5,0x8
    800071c8:	71ca8a93          	addi	s5,s5,1820 # 8000f8e0 <end>
    800071cc:	0954e263          	bltu	s1,s5,80007250 <freerange+0xd0>
    800071d0:	01100993          	li	s3,17
    800071d4:	01b99993          	slli	s3,s3,0x1b
    800071d8:	0734fc63          	bgeu	s1,s3,80007250 <freerange+0xd0>
    800071dc:	00058a13          	mv	s4,a1
    800071e0:	00003917          	auipc	s2,0x3
    800071e4:	3d090913          	addi	s2,s2,976 # 8000a5b0 <kmem>
    800071e8:	00002b37          	lui	s6,0x2
    800071ec:	0140006f          	j	80007200 <freerange+0x80>
    800071f0:	000017b7          	lui	a5,0x1
    800071f4:	00f484b3          	add	s1,s1,a5
    800071f8:	0554ec63          	bltu	s1,s5,80007250 <freerange+0xd0>
    800071fc:	0534fa63          	bgeu	s1,s3,80007250 <freerange+0xd0>
    80007200:	00001637          	lui	a2,0x1
    80007204:	00100593          	li	a1,1
    80007208:	00048513          	mv	a0,s1
    8000720c:	00000097          	auipc	ra,0x0
    80007210:	50c080e7          	jalr	1292(ra) # 80007718 <__memset>
    80007214:	00093703          	ld	a4,0(s2)
    80007218:	016487b3          	add	a5,s1,s6
    8000721c:	00e4b023          	sd	a4,0(s1)
    80007220:	00993023          	sd	s1,0(s2)
    80007224:	fcfa76e3          	bgeu	s4,a5,800071f0 <freerange+0x70>
    80007228:	03813083          	ld	ra,56(sp)
    8000722c:	03013403          	ld	s0,48(sp)
    80007230:	02813483          	ld	s1,40(sp)
    80007234:	02013903          	ld	s2,32(sp)
    80007238:	01813983          	ld	s3,24(sp)
    8000723c:	01013a03          	ld	s4,16(sp)
    80007240:	00813a83          	ld	s5,8(sp)
    80007244:	00013b03          	ld	s6,0(sp)
    80007248:	04010113          	addi	sp,sp,64
    8000724c:	00008067          	ret
    80007250:	00001517          	auipc	a0,0x1
    80007254:	41050513          	addi	a0,a0,1040 # 80008660 <digits+0x18>
    80007258:	fffff097          	auipc	ra,0xfffff
    8000725c:	3d4080e7          	jalr	980(ra) # 8000662c <panic>

0000000080007260 <kfree>:
    80007260:	fe010113          	addi	sp,sp,-32
    80007264:	00813823          	sd	s0,16(sp)
    80007268:	00113c23          	sd	ra,24(sp)
    8000726c:	00913423          	sd	s1,8(sp)
    80007270:	02010413          	addi	s0,sp,32
    80007274:	03451793          	slli	a5,a0,0x34
    80007278:	04079c63          	bnez	a5,800072d0 <kfree+0x70>
    8000727c:	00008797          	auipc	a5,0x8
    80007280:	66478793          	addi	a5,a5,1636 # 8000f8e0 <end>
    80007284:	00050493          	mv	s1,a0
    80007288:	04f56463          	bltu	a0,a5,800072d0 <kfree+0x70>
    8000728c:	01100793          	li	a5,17
    80007290:	01b79793          	slli	a5,a5,0x1b
    80007294:	02f57e63          	bgeu	a0,a5,800072d0 <kfree+0x70>
    80007298:	00001637          	lui	a2,0x1
    8000729c:	00100593          	li	a1,1
    800072a0:	00000097          	auipc	ra,0x0
    800072a4:	478080e7          	jalr	1144(ra) # 80007718 <__memset>
    800072a8:	00003797          	auipc	a5,0x3
    800072ac:	30878793          	addi	a5,a5,776 # 8000a5b0 <kmem>
    800072b0:	0007b703          	ld	a4,0(a5)
    800072b4:	01813083          	ld	ra,24(sp)
    800072b8:	01013403          	ld	s0,16(sp)
    800072bc:	00e4b023          	sd	a4,0(s1)
    800072c0:	0097b023          	sd	s1,0(a5)
    800072c4:	00813483          	ld	s1,8(sp)
    800072c8:	02010113          	addi	sp,sp,32
    800072cc:	00008067          	ret
    800072d0:	00001517          	auipc	a0,0x1
    800072d4:	39050513          	addi	a0,a0,912 # 80008660 <digits+0x18>
    800072d8:	fffff097          	auipc	ra,0xfffff
    800072dc:	354080e7          	jalr	852(ra) # 8000662c <panic>

00000000800072e0 <kalloc>:
    800072e0:	fe010113          	addi	sp,sp,-32
    800072e4:	00813823          	sd	s0,16(sp)
    800072e8:	00913423          	sd	s1,8(sp)
    800072ec:	00113c23          	sd	ra,24(sp)
    800072f0:	02010413          	addi	s0,sp,32
    800072f4:	00003797          	auipc	a5,0x3
    800072f8:	2bc78793          	addi	a5,a5,700 # 8000a5b0 <kmem>
    800072fc:	0007b483          	ld	s1,0(a5)
    80007300:	02048063          	beqz	s1,80007320 <kalloc+0x40>
    80007304:	0004b703          	ld	a4,0(s1)
    80007308:	00001637          	lui	a2,0x1
    8000730c:	00500593          	li	a1,5
    80007310:	00048513          	mv	a0,s1
    80007314:	00e7b023          	sd	a4,0(a5)
    80007318:	00000097          	auipc	ra,0x0
    8000731c:	400080e7          	jalr	1024(ra) # 80007718 <__memset>
    80007320:	01813083          	ld	ra,24(sp)
    80007324:	01013403          	ld	s0,16(sp)
    80007328:	00048513          	mv	a0,s1
    8000732c:	00813483          	ld	s1,8(sp)
    80007330:	02010113          	addi	sp,sp,32
    80007334:	00008067          	ret

0000000080007338 <initlock>:
    80007338:	ff010113          	addi	sp,sp,-16
    8000733c:	00813423          	sd	s0,8(sp)
    80007340:	01010413          	addi	s0,sp,16
    80007344:	00813403          	ld	s0,8(sp)
    80007348:	00b53423          	sd	a1,8(a0)
    8000734c:	00052023          	sw	zero,0(a0)
    80007350:	00053823          	sd	zero,16(a0)
    80007354:	01010113          	addi	sp,sp,16
    80007358:	00008067          	ret

000000008000735c <acquire>:
    8000735c:	fe010113          	addi	sp,sp,-32
    80007360:	00813823          	sd	s0,16(sp)
    80007364:	00913423          	sd	s1,8(sp)
    80007368:	00113c23          	sd	ra,24(sp)
    8000736c:	01213023          	sd	s2,0(sp)
    80007370:	02010413          	addi	s0,sp,32
    80007374:	00050493          	mv	s1,a0
    80007378:	10002973          	csrr	s2,sstatus
    8000737c:	100027f3          	csrr	a5,sstatus
    80007380:	ffd7f793          	andi	a5,a5,-3
    80007384:	10079073          	csrw	sstatus,a5
    80007388:	fffff097          	auipc	ra,0xfffff
    8000738c:	8e4080e7          	jalr	-1820(ra) # 80005c6c <mycpu>
    80007390:	07852783          	lw	a5,120(a0)
    80007394:	06078e63          	beqz	a5,80007410 <acquire+0xb4>
    80007398:	fffff097          	auipc	ra,0xfffff
    8000739c:	8d4080e7          	jalr	-1836(ra) # 80005c6c <mycpu>
    800073a0:	07852783          	lw	a5,120(a0)
    800073a4:	0004a703          	lw	a4,0(s1)
    800073a8:	0017879b          	addiw	a5,a5,1
    800073ac:	06f52c23          	sw	a5,120(a0)
    800073b0:	04071063          	bnez	a4,800073f0 <acquire+0x94>
    800073b4:	00100713          	li	a4,1
    800073b8:	00070793          	mv	a5,a4
    800073bc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800073c0:	0007879b          	sext.w	a5,a5
    800073c4:	fe079ae3          	bnez	a5,800073b8 <acquire+0x5c>
    800073c8:	0ff0000f          	fence
    800073cc:	fffff097          	auipc	ra,0xfffff
    800073d0:	8a0080e7          	jalr	-1888(ra) # 80005c6c <mycpu>
    800073d4:	01813083          	ld	ra,24(sp)
    800073d8:	01013403          	ld	s0,16(sp)
    800073dc:	00a4b823          	sd	a0,16(s1)
    800073e0:	00013903          	ld	s2,0(sp)
    800073e4:	00813483          	ld	s1,8(sp)
    800073e8:	02010113          	addi	sp,sp,32
    800073ec:	00008067          	ret
    800073f0:	0104b903          	ld	s2,16(s1)
    800073f4:	fffff097          	auipc	ra,0xfffff
    800073f8:	878080e7          	jalr	-1928(ra) # 80005c6c <mycpu>
    800073fc:	faa91ce3          	bne	s2,a0,800073b4 <acquire+0x58>
    80007400:	00001517          	auipc	a0,0x1
    80007404:	26850513          	addi	a0,a0,616 # 80008668 <digits+0x20>
    80007408:	fffff097          	auipc	ra,0xfffff
    8000740c:	224080e7          	jalr	548(ra) # 8000662c <panic>
    80007410:	00195913          	srli	s2,s2,0x1
    80007414:	fffff097          	auipc	ra,0xfffff
    80007418:	858080e7          	jalr	-1960(ra) # 80005c6c <mycpu>
    8000741c:	00197913          	andi	s2,s2,1
    80007420:	07252e23          	sw	s2,124(a0)
    80007424:	f75ff06f          	j	80007398 <acquire+0x3c>

0000000080007428 <release>:
    80007428:	fe010113          	addi	sp,sp,-32
    8000742c:	00813823          	sd	s0,16(sp)
    80007430:	00113c23          	sd	ra,24(sp)
    80007434:	00913423          	sd	s1,8(sp)
    80007438:	01213023          	sd	s2,0(sp)
    8000743c:	02010413          	addi	s0,sp,32
    80007440:	00052783          	lw	a5,0(a0)
    80007444:	00079a63          	bnez	a5,80007458 <release+0x30>
    80007448:	00001517          	auipc	a0,0x1
    8000744c:	22850513          	addi	a0,a0,552 # 80008670 <digits+0x28>
    80007450:	fffff097          	auipc	ra,0xfffff
    80007454:	1dc080e7          	jalr	476(ra) # 8000662c <panic>
    80007458:	01053903          	ld	s2,16(a0)
    8000745c:	00050493          	mv	s1,a0
    80007460:	fffff097          	auipc	ra,0xfffff
    80007464:	80c080e7          	jalr	-2036(ra) # 80005c6c <mycpu>
    80007468:	fea910e3          	bne	s2,a0,80007448 <release+0x20>
    8000746c:	0004b823          	sd	zero,16(s1)
    80007470:	0ff0000f          	fence
    80007474:	0f50000f          	fence	iorw,ow
    80007478:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000747c:	ffffe097          	auipc	ra,0xffffe
    80007480:	7f0080e7          	jalr	2032(ra) # 80005c6c <mycpu>
    80007484:	100027f3          	csrr	a5,sstatus
    80007488:	0027f793          	andi	a5,a5,2
    8000748c:	04079a63          	bnez	a5,800074e0 <release+0xb8>
    80007490:	07852783          	lw	a5,120(a0)
    80007494:	02f05e63          	blez	a5,800074d0 <release+0xa8>
    80007498:	fff7871b          	addiw	a4,a5,-1
    8000749c:	06e52c23          	sw	a4,120(a0)
    800074a0:	00071c63          	bnez	a4,800074b8 <release+0x90>
    800074a4:	07c52783          	lw	a5,124(a0)
    800074a8:	00078863          	beqz	a5,800074b8 <release+0x90>
    800074ac:	100027f3          	csrr	a5,sstatus
    800074b0:	0027e793          	ori	a5,a5,2
    800074b4:	10079073          	csrw	sstatus,a5
    800074b8:	01813083          	ld	ra,24(sp)
    800074bc:	01013403          	ld	s0,16(sp)
    800074c0:	00813483          	ld	s1,8(sp)
    800074c4:	00013903          	ld	s2,0(sp)
    800074c8:	02010113          	addi	sp,sp,32
    800074cc:	00008067          	ret
    800074d0:	00001517          	auipc	a0,0x1
    800074d4:	1c050513          	addi	a0,a0,448 # 80008690 <digits+0x48>
    800074d8:	fffff097          	auipc	ra,0xfffff
    800074dc:	154080e7          	jalr	340(ra) # 8000662c <panic>
    800074e0:	00001517          	auipc	a0,0x1
    800074e4:	19850513          	addi	a0,a0,408 # 80008678 <digits+0x30>
    800074e8:	fffff097          	auipc	ra,0xfffff
    800074ec:	144080e7          	jalr	324(ra) # 8000662c <panic>

00000000800074f0 <holding>:
    800074f0:	00052783          	lw	a5,0(a0)
    800074f4:	00079663          	bnez	a5,80007500 <holding+0x10>
    800074f8:	00000513          	li	a0,0
    800074fc:	00008067          	ret
    80007500:	fe010113          	addi	sp,sp,-32
    80007504:	00813823          	sd	s0,16(sp)
    80007508:	00913423          	sd	s1,8(sp)
    8000750c:	00113c23          	sd	ra,24(sp)
    80007510:	02010413          	addi	s0,sp,32
    80007514:	01053483          	ld	s1,16(a0)
    80007518:	ffffe097          	auipc	ra,0xffffe
    8000751c:	754080e7          	jalr	1876(ra) # 80005c6c <mycpu>
    80007520:	01813083          	ld	ra,24(sp)
    80007524:	01013403          	ld	s0,16(sp)
    80007528:	40a48533          	sub	a0,s1,a0
    8000752c:	00153513          	seqz	a0,a0
    80007530:	00813483          	ld	s1,8(sp)
    80007534:	02010113          	addi	sp,sp,32
    80007538:	00008067          	ret

000000008000753c <push_off>:
    8000753c:	fe010113          	addi	sp,sp,-32
    80007540:	00813823          	sd	s0,16(sp)
    80007544:	00113c23          	sd	ra,24(sp)
    80007548:	00913423          	sd	s1,8(sp)
    8000754c:	02010413          	addi	s0,sp,32
    80007550:	100024f3          	csrr	s1,sstatus
    80007554:	100027f3          	csrr	a5,sstatus
    80007558:	ffd7f793          	andi	a5,a5,-3
    8000755c:	10079073          	csrw	sstatus,a5
    80007560:	ffffe097          	auipc	ra,0xffffe
    80007564:	70c080e7          	jalr	1804(ra) # 80005c6c <mycpu>
    80007568:	07852783          	lw	a5,120(a0)
    8000756c:	02078663          	beqz	a5,80007598 <push_off+0x5c>
    80007570:	ffffe097          	auipc	ra,0xffffe
    80007574:	6fc080e7          	jalr	1788(ra) # 80005c6c <mycpu>
    80007578:	07852783          	lw	a5,120(a0)
    8000757c:	01813083          	ld	ra,24(sp)
    80007580:	01013403          	ld	s0,16(sp)
    80007584:	0017879b          	addiw	a5,a5,1
    80007588:	06f52c23          	sw	a5,120(a0)
    8000758c:	00813483          	ld	s1,8(sp)
    80007590:	02010113          	addi	sp,sp,32
    80007594:	00008067          	ret
    80007598:	0014d493          	srli	s1,s1,0x1
    8000759c:	ffffe097          	auipc	ra,0xffffe
    800075a0:	6d0080e7          	jalr	1744(ra) # 80005c6c <mycpu>
    800075a4:	0014f493          	andi	s1,s1,1
    800075a8:	06952e23          	sw	s1,124(a0)
    800075ac:	fc5ff06f          	j	80007570 <push_off+0x34>

00000000800075b0 <pop_off>:
    800075b0:	ff010113          	addi	sp,sp,-16
    800075b4:	00813023          	sd	s0,0(sp)
    800075b8:	00113423          	sd	ra,8(sp)
    800075bc:	01010413          	addi	s0,sp,16
    800075c0:	ffffe097          	auipc	ra,0xffffe
    800075c4:	6ac080e7          	jalr	1708(ra) # 80005c6c <mycpu>
    800075c8:	100027f3          	csrr	a5,sstatus
    800075cc:	0027f793          	andi	a5,a5,2
    800075d0:	04079663          	bnez	a5,8000761c <pop_off+0x6c>
    800075d4:	07852783          	lw	a5,120(a0)
    800075d8:	02f05a63          	blez	a5,8000760c <pop_off+0x5c>
    800075dc:	fff7871b          	addiw	a4,a5,-1
    800075e0:	06e52c23          	sw	a4,120(a0)
    800075e4:	00071c63          	bnez	a4,800075fc <pop_off+0x4c>
    800075e8:	07c52783          	lw	a5,124(a0)
    800075ec:	00078863          	beqz	a5,800075fc <pop_off+0x4c>
    800075f0:	100027f3          	csrr	a5,sstatus
    800075f4:	0027e793          	ori	a5,a5,2
    800075f8:	10079073          	csrw	sstatus,a5
    800075fc:	00813083          	ld	ra,8(sp)
    80007600:	00013403          	ld	s0,0(sp)
    80007604:	01010113          	addi	sp,sp,16
    80007608:	00008067          	ret
    8000760c:	00001517          	auipc	a0,0x1
    80007610:	08450513          	addi	a0,a0,132 # 80008690 <digits+0x48>
    80007614:	fffff097          	auipc	ra,0xfffff
    80007618:	018080e7          	jalr	24(ra) # 8000662c <panic>
    8000761c:	00001517          	auipc	a0,0x1
    80007620:	05c50513          	addi	a0,a0,92 # 80008678 <digits+0x30>
    80007624:	fffff097          	auipc	ra,0xfffff
    80007628:	008080e7          	jalr	8(ra) # 8000662c <panic>

000000008000762c <push_on>:
    8000762c:	fe010113          	addi	sp,sp,-32
    80007630:	00813823          	sd	s0,16(sp)
    80007634:	00113c23          	sd	ra,24(sp)
    80007638:	00913423          	sd	s1,8(sp)
    8000763c:	02010413          	addi	s0,sp,32
    80007640:	100024f3          	csrr	s1,sstatus
    80007644:	100027f3          	csrr	a5,sstatus
    80007648:	0027e793          	ori	a5,a5,2
    8000764c:	10079073          	csrw	sstatus,a5
    80007650:	ffffe097          	auipc	ra,0xffffe
    80007654:	61c080e7          	jalr	1564(ra) # 80005c6c <mycpu>
    80007658:	07852783          	lw	a5,120(a0)
    8000765c:	02078663          	beqz	a5,80007688 <push_on+0x5c>
    80007660:	ffffe097          	auipc	ra,0xffffe
    80007664:	60c080e7          	jalr	1548(ra) # 80005c6c <mycpu>
    80007668:	07852783          	lw	a5,120(a0)
    8000766c:	01813083          	ld	ra,24(sp)
    80007670:	01013403          	ld	s0,16(sp)
    80007674:	0017879b          	addiw	a5,a5,1
    80007678:	06f52c23          	sw	a5,120(a0)
    8000767c:	00813483          	ld	s1,8(sp)
    80007680:	02010113          	addi	sp,sp,32
    80007684:	00008067          	ret
    80007688:	0014d493          	srli	s1,s1,0x1
    8000768c:	ffffe097          	auipc	ra,0xffffe
    80007690:	5e0080e7          	jalr	1504(ra) # 80005c6c <mycpu>
    80007694:	0014f493          	andi	s1,s1,1
    80007698:	06952e23          	sw	s1,124(a0)
    8000769c:	fc5ff06f          	j	80007660 <push_on+0x34>

00000000800076a0 <pop_on>:
    800076a0:	ff010113          	addi	sp,sp,-16
    800076a4:	00813023          	sd	s0,0(sp)
    800076a8:	00113423          	sd	ra,8(sp)
    800076ac:	01010413          	addi	s0,sp,16
    800076b0:	ffffe097          	auipc	ra,0xffffe
    800076b4:	5bc080e7          	jalr	1468(ra) # 80005c6c <mycpu>
    800076b8:	100027f3          	csrr	a5,sstatus
    800076bc:	0027f793          	andi	a5,a5,2
    800076c0:	04078463          	beqz	a5,80007708 <pop_on+0x68>
    800076c4:	07852783          	lw	a5,120(a0)
    800076c8:	02f05863          	blez	a5,800076f8 <pop_on+0x58>
    800076cc:	fff7879b          	addiw	a5,a5,-1
    800076d0:	06f52c23          	sw	a5,120(a0)
    800076d4:	07853783          	ld	a5,120(a0)
    800076d8:	00079863          	bnez	a5,800076e8 <pop_on+0x48>
    800076dc:	100027f3          	csrr	a5,sstatus
    800076e0:	ffd7f793          	andi	a5,a5,-3
    800076e4:	10079073          	csrw	sstatus,a5
    800076e8:	00813083          	ld	ra,8(sp)
    800076ec:	00013403          	ld	s0,0(sp)
    800076f0:	01010113          	addi	sp,sp,16
    800076f4:	00008067          	ret
    800076f8:	00001517          	auipc	a0,0x1
    800076fc:	fc050513          	addi	a0,a0,-64 # 800086b8 <digits+0x70>
    80007700:	fffff097          	auipc	ra,0xfffff
    80007704:	f2c080e7          	jalr	-212(ra) # 8000662c <panic>
    80007708:	00001517          	auipc	a0,0x1
    8000770c:	f9050513          	addi	a0,a0,-112 # 80008698 <digits+0x50>
    80007710:	fffff097          	auipc	ra,0xfffff
    80007714:	f1c080e7          	jalr	-228(ra) # 8000662c <panic>

0000000080007718 <__memset>:
    80007718:	ff010113          	addi	sp,sp,-16
    8000771c:	00813423          	sd	s0,8(sp)
    80007720:	01010413          	addi	s0,sp,16
    80007724:	1a060e63          	beqz	a2,800078e0 <__memset+0x1c8>
    80007728:	40a007b3          	neg	a5,a0
    8000772c:	0077f793          	andi	a5,a5,7
    80007730:	00778693          	addi	a3,a5,7
    80007734:	00b00813          	li	a6,11
    80007738:	0ff5f593          	andi	a1,a1,255
    8000773c:	fff6071b          	addiw	a4,a2,-1
    80007740:	1b06e663          	bltu	a3,a6,800078ec <__memset+0x1d4>
    80007744:	1cd76463          	bltu	a4,a3,8000790c <__memset+0x1f4>
    80007748:	1a078e63          	beqz	a5,80007904 <__memset+0x1ec>
    8000774c:	00b50023          	sb	a1,0(a0)
    80007750:	00100713          	li	a4,1
    80007754:	1ae78463          	beq	a5,a4,800078fc <__memset+0x1e4>
    80007758:	00b500a3          	sb	a1,1(a0)
    8000775c:	00200713          	li	a4,2
    80007760:	1ae78a63          	beq	a5,a4,80007914 <__memset+0x1fc>
    80007764:	00b50123          	sb	a1,2(a0)
    80007768:	00300713          	li	a4,3
    8000776c:	18e78463          	beq	a5,a4,800078f4 <__memset+0x1dc>
    80007770:	00b501a3          	sb	a1,3(a0)
    80007774:	00400713          	li	a4,4
    80007778:	1ae78263          	beq	a5,a4,8000791c <__memset+0x204>
    8000777c:	00b50223          	sb	a1,4(a0)
    80007780:	00500713          	li	a4,5
    80007784:	1ae78063          	beq	a5,a4,80007924 <__memset+0x20c>
    80007788:	00b502a3          	sb	a1,5(a0)
    8000778c:	00700713          	li	a4,7
    80007790:	18e79e63          	bne	a5,a4,8000792c <__memset+0x214>
    80007794:	00b50323          	sb	a1,6(a0)
    80007798:	00700e93          	li	t4,7
    8000779c:	00859713          	slli	a4,a1,0x8
    800077a0:	00e5e733          	or	a4,a1,a4
    800077a4:	01059e13          	slli	t3,a1,0x10
    800077a8:	01c76e33          	or	t3,a4,t3
    800077ac:	01859313          	slli	t1,a1,0x18
    800077b0:	006e6333          	or	t1,t3,t1
    800077b4:	02059893          	slli	a7,a1,0x20
    800077b8:	40f60e3b          	subw	t3,a2,a5
    800077bc:	011368b3          	or	a7,t1,a7
    800077c0:	02859813          	slli	a6,a1,0x28
    800077c4:	0108e833          	or	a6,a7,a6
    800077c8:	03059693          	slli	a3,a1,0x30
    800077cc:	003e589b          	srliw	a7,t3,0x3
    800077d0:	00d866b3          	or	a3,a6,a3
    800077d4:	03859713          	slli	a4,a1,0x38
    800077d8:	00389813          	slli	a6,a7,0x3
    800077dc:	00f507b3          	add	a5,a0,a5
    800077e0:	00e6e733          	or	a4,a3,a4
    800077e4:	000e089b          	sext.w	a7,t3
    800077e8:	00f806b3          	add	a3,a6,a5
    800077ec:	00e7b023          	sd	a4,0(a5)
    800077f0:	00878793          	addi	a5,a5,8
    800077f4:	fed79ce3          	bne	a5,a3,800077ec <__memset+0xd4>
    800077f8:	ff8e7793          	andi	a5,t3,-8
    800077fc:	0007871b          	sext.w	a4,a5
    80007800:	01d787bb          	addw	a5,a5,t4
    80007804:	0ce88e63          	beq	a7,a4,800078e0 <__memset+0x1c8>
    80007808:	00f50733          	add	a4,a0,a5
    8000780c:	00b70023          	sb	a1,0(a4)
    80007810:	0017871b          	addiw	a4,a5,1
    80007814:	0cc77663          	bgeu	a4,a2,800078e0 <__memset+0x1c8>
    80007818:	00e50733          	add	a4,a0,a4
    8000781c:	00b70023          	sb	a1,0(a4)
    80007820:	0027871b          	addiw	a4,a5,2
    80007824:	0ac77e63          	bgeu	a4,a2,800078e0 <__memset+0x1c8>
    80007828:	00e50733          	add	a4,a0,a4
    8000782c:	00b70023          	sb	a1,0(a4)
    80007830:	0037871b          	addiw	a4,a5,3
    80007834:	0ac77663          	bgeu	a4,a2,800078e0 <__memset+0x1c8>
    80007838:	00e50733          	add	a4,a0,a4
    8000783c:	00b70023          	sb	a1,0(a4)
    80007840:	0047871b          	addiw	a4,a5,4
    80007844:	08c77e63          	bgeu	a4,a2,800078e0 <__memset+0x1c8>
    80007848:	00e50733          	add	a4,a0,a4
    8000784c:	00b70023          	sb	a1,0(a4)
    80007850:	0057871b          	addiw	a4,a5,5
    80007854:	08c77663          	bgeu	a4,a2,800078e0 <__memset+0x1c8>
    80007858:	00e50733          	add	a4,a0,a4
    8000785c:	00b70023          	sb	a1,0(a4)
    80007860:	0067871b          	addiw	a4,a5,6
    80007864:	06c77e63          	bgeu	a4,a2,800078e0 <__memset+0x1c8>
    80007868:	00e50733          	add	a4,a0,a4
    8000786c:	00b70023          	sb	a1,0(a4)
    80007870:	0077871b          	addiw	a4,a5,7
    80007874:	06c77663          	bgeu	a4,a2,800078e0 <__memset+0x1c8>
    80007878:	00e50733          	add	a4,a0,a4
    8000787c:	00b70023          	sb	a1,0(a4)
    80007880:	0087871b          	addiw	a4,a5,8
    80007884:	04c77e63          	bgeu	a4,a2,800078e0 <__memset+0x1c8>
    80007888:	00e50733          	add	a4,a0,a4
    8000788c:	00b70023          	sb	a1,0(a4)
    80007890:	0097871b          	addiw	a4,a5,9
    80007894:	04c77663          	bgeu	a4,a2,800078e0 <__memset+0x1c8>
    80007898:	00e50733          	add	a4,a0,a4
    8000789c:	00b70023          	sb	a1,0(a4)
    800078a0:	00a7871b          	addiw	a4,a5,10
    800078a4:	02c77e63          	bgeu	a4,a2,800078e0 <__memset+0x1c8>
    800078a8:	00e50733          	add	a4,a0,a4
    800078ac:	00b70023          	sb	a1,0(a4)
    800078b0:	00b7871b          	addiw	a4,a5,11
    800078b4:	02c77663          	bgeu	a4,a2,800078e0 <__memset+0x1c8>
    800078b8:	00e50733          	add	a4,a0,a4
    800078bc:	00b70023          	sb	a1,0(a4)
    800078c0:	00c7871b          	addiw	a4,a5,12
    800078c4:	00c77e63          	bgeu	a4,a2,800078e0 <__memset+0x1c8>
    800078c8:	00e50733          	add	a4,a0,a4
    800078cc:	00b70023          	sb	a1,0(a4)
    800078d0:	00d7879b          	addiw	a5,a5,13
    800078d4:	00c7f663          	bgeu	a5,a2,800078e0 <__memset+0x1c8>
    800078d8:	00f507b3          	add	a5,a0,a5
    800078dc:	00b78023          	sb	a1,0(a5)
    800078e0:	00813403          	ld	s0,8(sp)
    800078e4:	01010113          	addi	sp,sp,16
    800078e8:	00008067          	ret
    800078ec:	00b00693          	li	a3,11
    800078f0:	e55ff06f          	j	80007744 <__memset+0x2c>
    800078f4:	00300e93          	li	t4,3
    800078f8:	ea5ff06f          	j	8000779c <__memset+0x84>
    800078fc:	00100e93          	li	t4,1
    80007900:	e9dff06f          	j	8000779c <__memset+0x84>
    80007904:	00000e93          	li	t4,0
    80007908:	e95ff06f          	j	8000779c <__memset+0x84>
    8000790c:	00000793          	li	a5,0
    80007910:	ef9ff06f          	j	80007808 <__memset+0xf0>
    80007914:	00200e93          	li	t4,2
    80007918:	e85ff06f          	j	8000779c <__memset+0x84>
    8000791c:	00400e93          	li	t4,4
    80007920:	e7dff06f          	j	8000779c <__memset+0x84>
    80007924:	00500e93          	li	t4,5
    80007928:	e75ff06f          	j	8000779c <__memset+0x84>
    8000792c:	00600e93          	li	t4,6
    80007930:	e6dff06f          	j	8000779c <__memset+0x84>

0000000080007934 <__memmove>:
    80007934:	ff010113          	addi	sp,sp,-16
    80007938:	00813423          	sd	s0,8(sp)
    8000793c:	01010413          	addi	s0,sp,16
    80007940:	0e060863          	beqz	a2,80007a30 <__memmove+0xfc>
    80007944:	fff6069b          	addiw	a3,a2,-1
    80007948:	0006881b          	sext.w	a6,a3
    8000794c:	0ea5e863          	bltu	a1,a0,80007a3c <__memmove+0x108>
    80007950:	00758713          	addi	a4,a1,7
    80007954:	00a5e7b3          	or	a5,a1,a0
    80007958:	40a70733          	sub	a4,a4,a0
    8000795c:	0077f793          	andi	a5,a5,7
    80007960:	00f73713          	sltiu	a4,a4,15
    80007964:	00174713          	xori	a4,a4,1
    80007968:	0017b793          	seqz	a5,a5
    8000796c:	00e7f7b3          	and	a5,a5,a4
    80007970:	10078863          	beqz	a5,80007a80 <__memmove+0x14c>
    80007974:	00900793          	li	a5,9
    80007978:	1107f463          	bgeu	a5,a6,80007a80 <__memmove+0x14c>
    8000797c:	0036581b          	srliw	a6,a2,0x3
    80007980:	fff8081b          	addiw	a6,a6,-1
    80007984:	02081813          	slli	a6,a6,0x20
    80007988:	01d85893          	srli	a7,a6,0x1d
    8000798c:	00858813          	addi	a6,a1,8
    80007990:	00058793          	mv	a5,a1
    80007994:	00050713          	mv	a4,a0
    80007998:	01088833          	add	a6,a7,a6
    8000799c:	0007b883          	ld	a7,0(a5)
    800079a0:	00878793          	addi	a5,a5,8
    800079a4:	00870713          	addi	a4,a4,8
    800079a8:	ff173c23          	sd	a7,-8(a4)
    800079ac:	ff0798e3          	bne	a5,a6,8000799c <__memmove+0x68>
    800079b0:	ff867713          	andi	a4,a2,-8
    800079b4:	02071793          	slli	a5,a4,0x20
    800079b8:	0207d793          	srli	a5,a5,0x20
    800079bc:	00f585b3          	add	a1,a1,a5
    800079c0:	40e686bb          	subw	a3,a3,a4
    800079c4:	00f507b3          	add	a5,a0,a5
    800079c8:	06e60463          	beq	a2,a4,80007a30 <__memmove+0xfc>
    800079cc:	0005c703          	lbu	a4,0(a1)
    800079d0:	00e78023          	sb	a4,0(a5)
    800079d4:	04068e63          	beqz	a3,80007a30 <__memmove+0xfc>
    800079d8:	0015c603          	lbu	a2,1(a1)
    800079dc:	00100713          	li	a4,1
    800079e0:	00c780a3          	sb	a2,1(a5)
    800079e4:	04e68663          	beq	a3,a4,80007a30 <__memmove+0xfc>
    800079e8:	0025c603          	lbu	a2,2(a1)
    800079ec:	00200713          	li	a4,2
    800079f0:	00c78123          	sb	a2,2(a5)
    800079f4:	02e68e63          	beq	a3,a4,80007a30 <__memmove+0xfc>
    800079f8:	0035c603          	lbu	a2,3(a1)
    800079fc:	00300713          	li	a4,3
    80007a00:	00c781a3          	sb	a2,3(a5)
    80007a04:	02e68663          	beq	a3,a4,80007a30 <__memmove+0xfc>
    80007a08:	0045c603          	lbu	a2,4(a1)
    80007a0c:	00400713          	li	a4,4
    80007a10:	00c78223          	sb	a2,4(a5)
    80007a14:	00e68e63          	beq	a3,a4,80007a30 <__memmove+0xfc>
    80007a18:	0055c603          	lbu	a2,5(a1)
    80007a1c:	00500713          	li	a4,5
    80007a20:	00c782a3          	sb	a2,5(a5)
    80007a24:	00e68663          	beq	a3,a4,80007a30 <__memmove+0xfc>
    80007a28:	0065c703          	lbu	a4,6(a1)
    80007a2c:	00e78323          	sb	a4,6(a5)
    80007a30:	00813403          	ld	s0,8(sp)
    80007a34:	01010113          	addi	sp,sp,16
    80007a38:	00008067          	ret
    80007a3c:	02061713          	slli	a4,a2,0x20
    80007a40:	02075713          	srli	a4,a4,0x20
    80007a44:	00e587b3          	add	a5,a1,a4
    80007a48:	f0f574e3          	bgeu	a0,a5,80007950 <__memmove+0x1c>
    80007a4c:	02069613          	slli	a2,a3,0x20
    80007a50:	02065613          	srli	a2,a2,0x20
    80007a54:	fff64613          	not	a2,a2
    80007a58:	00e50733          	add	a4,a0,a4
    80007a5c:	00c78633          	add	a2,a5,a2
    80007a60:	fff7c683          	lbu	a3,-1(a5)
    80007a64:	fff78793          	addi	a5,a5,-1
    80007a68:	fff70713          	addi	a4,a4,-1
    80007a6c:	00d70023          	sb	a3,0(a4)
    80007a70:	fec798e3          	bne	a5,a2,80007a60 <__memmove+0x12c>
    80007a74:	00813403          	ld	s0,8(sp)
    80007a78:	01010113          	addi	sp,sp,16
    80007a7c:	00008067          	ret
    80007a80:	02069713          	slli	a4,a3,0x20
    80007a84:	02075713          	srli	a4,a4,0x20
    80007a88:	00170713          	addi	a4,a4,1
    80007a8c:	00e50733          	add	a4,a0,a4
    80007a90:	00050793          	mv	a5,a0
    80007a94:	0005c683          	lbu	a3,0(a1)
    80007a98:	00178793          	addi	a5,a5,1
    80007a9c:	00158593          	addi	a1,a1,1
    80007aa0:	fed78fa3          	sb	a3,-1(a5)
    80007aa4:	fee798e3          	bne	a5,a4,80007a94 <__memmove+0x160>
    80007aa8:	f89ff06f          	j	80007a30 <__memmove+0xfc>
	...
